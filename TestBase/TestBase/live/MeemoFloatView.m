//
//  MeemoFloatView.m
//  TestBase
//
//  Created by chengjian on 2021/11/16.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "MeemoFloatView.h"
@interface MeemoFloatView ()
@property (nonatomic, assign) CGPoint startPoint;
@property (nonatomic, assign) CGPoint startCenter;
@end
@implementation MeemoFloatView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp {
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickFloatView)];
    [self addGestureRecognizer:singleTap];

    //添加移动手势可以拖动
    UIPanGestureRecognizer *moveGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dragAction:)];
    moveGestureRecognizer.minimumNumberOfTouches = 1;
    moveGestureRecognizer.maximumNumberOfTouches = 1;
    [self addGestureRecognizer:moveGestureRecognizer];
}

- (void)dragAction:(UIPanGestureRecognizer *)pan {
    switch (pan.state) {
        case UIGestureRecognizerStateBegan: {
            UIWindow *appWindow = [[UIApplication sharedApplication] keyWindow];
            CGPoint panPoint = [pan locationInView:appWindow];
            self.startPoint = panPoint;
            self.startCenter = self.center;
            break;
        }
        case UIGestureRecognizerStateChanged: {
            UIWindow *appWindow = [[UIApplication sharedApplication] keyWindow];
            CGPoint panPoint = [pan locationInView:appWindow];
            float dx;
            float dy;
            dx = panPoint.x - self.startPoint.x;
            dy = panPoint.y - self.startPoint.y;
            if (![self isReachEdge:dx dy:dy]) {
                self.center = CGPointMake(self.startCenter.x + dx, self.startCenter.y + dy);
            }
            break;
        }
        default:
            break;
    }
}

- (bool)isReachEdge:(float)dx dy:(float)dy {
    float top = self.startCenter.y - self.frame.size.height / 2;
    float bottom = self.startCenter.y + self.frame.size.height / 2;
    float left = self.startCenter.x - self.frame.size.width / 2;
    float right = self.startCenter.x + self.frame.size.width / 2;
    if (top + dy <= 0) {
        //达到顶部边缘
        return true;
    }
    if (bottom + dy >= [UIApplication sharedApplication].keyWindow.frame.size.height) {
        //达到底部边缘
        return true;
    }
    if (left + dx <= 0) {
        //达到左边缘
        return true;
    }
    if (right + dx >= [UIApplication sharedApplication].keyWindow.frame.size.width) {
        //达到右边缘
        return true;
    }
    return false;
}

- (void)clickFloatView {
}

@end

//
//  MeemoDanmuWindowManager.m
//  TestBase
//
//  Created by chengjian on 2021/11/16.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "MeemoDanmuWindowManager.h"
#import "MeemoDanmuView.h"
static const CGFloat kDanmuWidth = 260.0;
static const CGFloat kDanmuHeight = 32;
static const CGFloat kDanmuOffsetY = 32;
@implementation MeemoDanmuWindowManager
{
    MeemoDanmuView *danmuView;
}
+ (MeemoDanmuWindowManager *)sharedInstance {
    static dispatch_once_t onceToken;
    static MeemoDanmuWindowManager *sharedInstance;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[MeemoDanmuWindowManager alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    return self;
}

- (MeemoDanmuView *)danmuView {
    if (danmuView == nil) {
        danmuView = [[MeemoDanmuView alloc] initWithFrame:CGRectMake(0, kDanmuOffsetY, kDanmuWidth, kDanmuHeight)];
    }
    return danmuView;
}

- (void)show {
    [self danmuView].center = CGPointMake([UIApplication sharedApplication].keyWindow.frame.size.width / 2, self.danmuView.center.y);
    [[UIApplication sharedApplication].keyWindow addSubview:self.danmuView];
}

- (void)close {
    [[self danmuView] removeFromSuperview];
    danmuView = nil;
}

@end

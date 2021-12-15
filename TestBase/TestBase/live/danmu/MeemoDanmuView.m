//
//  MeemoDanmuView.m
//  TestBase
//
//  Created by chengjian on 2021/11/16.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "MeemoDanmuView.h"
#import "MeemoDanmuWindowManager.h"
static const CGFloat kDanmuTextWidth = 224.0;
static const CGFloat kDanmuTextPadding = 8;
static const CGFloat kDanmuTextHeight = 17;
@implementation MeemoDanmuView
{
    UILabel *label;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView {
    [self addSubview:[self label]];
    NSBundle *imagesBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"images" ofType:@"bundle"]];
    NSString *closeImagePath = [imagesBundle pathForResource:@"danmu_close" ofType:@"png"];
    UIImage *closeImage = [UIImage imageWithContentsOfFile:closeImagePath];
    UIImageView *closeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(kDanmuTextWidth + kDanmuTextPadding * 2, 0, 20, 32)];
    closeImageView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    closeImageView.image = closeImage;
    closeImageView.contentMode = UIViewContentModeCenter;
    closeImageView.userInteractionEnabled = true;
    UITapGestureRecognizer *closeTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(close)];
    [closeImageView addGestureRecognizer:closeTap];
    [self addSubview:closeImageView];
    NSString *bgPath = [imagesBundle pathForResource:@"danmu_bg" ofType:@"png"];
    UIImage *image = [UIImage imageWithContentsOfFile:bgPath];
    self.layer.contents = (id)image.CGImage;
}

- (UILabel *)label {
    if (label == nil) {
        label = [[UILabel alloc]initWithFrame:CGRectMake(kDanmuTextPadding, 0, kDanmuTextWidth, kDanmuTextHeight)];
        label.lineBreakMode = NSLineBreakByTruncatingTail;
        label.text = @"AAAAAAAsfffffffffffffffffffffffffffdsfdsdsfsfsfdffsfdfsffsffsfdfsdfdsddsfdsffsfdfdsfdsfsfsfsfsdfsfsfsf";
        label.font = [UIFont boldSystemFontOfSize:14];
        label.textColor = [UIColor colorWithWhite:1 alpha:0.9];
        label.center = CGPointMake(label.center.x, self.frame.size.height / 2);
        label.clipsToBounds = YES;
    }
    return label;
}

- (void)close {
    [[MeemoDanmuWindowManager sharedInstance] close];
}

- (void)clickFloatView {
}

@end

//
//  SettingEntryView.m
//  TestBase
//
//  Created by chengjian on 2021/11/17.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "MeemoSettingEntryView.h"
@implementation MeemoSettingEntryView
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
    NSBundle *imagesBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"images" ofType:@"bundle"]];
    NSString *settingImagePath = [imagesBundle pathForResource:@"live_setting_entry" ofType:@"png"];
    UIImage *settingImage = [UIImage imageWithContentsOfFile:settingImagePath];
    UIImageView *settingImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kLiveSettingSize, kLiveSettingSize)];
    settingImageView.image = settingImage;
    settingImageView.contentMode = UIViewContentModeScaleAspectFit;
    settingImageView.userInteractionEnabled = true;
    UITapGestureRecognizer *settingTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(enterSetting)];
    [settingImageView addGestureRecognizer:settingTap];
    [self addSubview:settingImageView];
}

- (void)enterSetting {
}

@end

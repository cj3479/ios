//
//  MeemoFloatEntryWindowManager.m
//  TestBase
//
//  Created by chengjian on 2021/11/17.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "MeemoFloatEntryWindowManager.h"
#import "MeemoSettingEntryView.h"
static const float kInitMarginRight = 20;
static const float kInitMarginBottom = 72;
@implementation MeemoFloatEntryWindowManager
{
    MeemoSettingEntryView *settingEntryView;
}
+ (MeemoFloatEntryWindowManager *)sharedInstance {
    static dispatch_once_t onceToken;
    static MeemoFloatEntryWindowManager *sharedInstance;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[MeemoFloatEntryWindowManager alloc] init];
    });
    return sharedInstance;
}

- (MeemoSettingEntryView *)settingEntryView {
    if (settingEntryView == nil) {
        float screenWidth = [UIApplication sharedApplication].keyWindow.frame.size.width;
        float screenHeight = [UIApplication sharedApplication].keyWindow.frame.size.height;
        settingEntryView = [[MeemoSettingEntryView alloc]initWithFrame:CGRectMake(screenWidth - kLiveSettingSize - kInitMarginRight, screenHeight - kLiveSettingSize - kInitMarginBottom, kLiveSettingSize, kLiveSettingSize)];
    }
    return settingEntryView;
}

- (void)refreshLiveStateIfNeeded {
    [self fetchLiveStateAndShow:false];
}

- (void)fetchLiveStateAndShow:(bool)force {
}

- (void)show {
    [[UIApplication sharedApplication].keyWindow addSubview:self.settingEntryView];
}

- (void)close {
    [[self settingEntryView] removeFromSuperview];
    settingEntryView = nil;
}

@end

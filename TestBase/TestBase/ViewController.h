//
//  ViewController.h
//  TestApp1
//
//  Created by chengjian on 2019/5/23.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"
//#import "Person.h"
#define AdLargeImgClick @"cmd_large_img_click"
//static NSString* const ProteusEventCmdAdTripleImgClick = @"cmd_triple_img_click";
static const int RIJConstantMultiVideoChannelID = 409409;
//static NSString* const ProteusEventCmdAdLargeImgClick = AdLargeImgClick;
@class Person;
typedef NS_ENUM(NSUInteger, AdStatSrc) {
    AdStatSrc_NONE = 0,//统计来源，imax页
    AdStatSrc_IMAX_PAGE = 3,//统计来源，imax页
    AdStatSrc_LANDING_PAGE = 5 //统计来源，落地页
};
@interface ViewController : UIViewController<SampleProtocolDelegate>
{
    IBOutlet UILabel *label;
    //1.创建库房，用来存储产品
    NSMutableArray *array ;
    //2.创建一个条件
    NSCondition *condition;
}
@property (nonatomic, assign) BOOL tempRDVTabBarHeight;
@property (nonatomic, strong) Person *person1;

@end


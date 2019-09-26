//
//  ViewController.m
//  TestApp1
//
//  Created by chengjian on 2019/5/23.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
//#import "TestPersonSub.h"1
#import "NextViewController.h"
#import "UITableviewVC.h"
#import "MyObject.h"
#import "A.h"
#import "B.h"
#import "TestRunLoop.h"
//#import "testfwstatic/testFWStatic.h"
#define  PROTEUS_EVENT_CMD_AD_PK_LEFT_CLICK        @"cmd_ad_pk_left_clickg"
#define  PROTEUS_EVENT_CMD_AD_PK_LEFT_CLICK        @"cmd_ad_pk_left_click"
#define  PROTEUS_EVENT_CMD_AD_PK_RIGHT_CLICK       @"cmd_ad_pk_right_click"
#define  PROTEUS_EVENT_CMD_AD_PK_TITLE_CLICK       @"cmd_ad_pk_title_click"
#define  PROTEUS_EVENT_CMD_AD_PK_BOTTOM_CLICK       @"cmd_ad_pk_bottom_click"

#pragma mark - 广告解析相关的字段
#define  RIJ_AD_KEY_EXTRA_DATA       @"bytes_extra_data"
#define  RIJ_AD_KEY_SHOWADTYPE       @"showAdType"
#define  RIJ_AD_KEY_PK_VS_BG       @"pk_ad_vs_pic"
#define  RIJ_AD_KEY_CONTAINER_AD_ITEM       @"container_ad_item"
#define  RIJ_AD_KEY_DEST_URL       @"dest_url"
#define  RIJ_AD_KEY_RL       @"rl"
#define  RIJ_AD_KEY_BUTTON_TXT       @"button_txt"
#define  RIJ_AD_KEY_BUTTON_BG       @"button_bg"
//回包相关model
typedef NS_ENUM(unsigned int, FeedsType_0x6cf) {
    FeedsType0x6cf_Article = 0,          //普通文章
    FeedsType0x6cf_Advertise = 1,        //位置广告
};

typedef NS_ENUM(unsigned int, PosLayout_0x6cf) {
    PosLayout0x6cf_Normal = 0,              //普通图文类广告
    PosLayout0x6cf_SinglePicTxt = 1,        //一拖多，单图文
    PosLayout0x6cf_MultiPicTxt = 2,         //一拖多，多图文
    PosLayout0x6cf_AddFan = 3,              //一拖多， 关注类
    PosLayout0x6cf_MultiPic = 4,            //多图
};

typedef NS_ENUM(unsigned int, AdLayout_0x6cf) { // 广告层级，解决一个广告位多条广告的情况
    AdLayout0x6cf_Normal = 0,                // 普通图文类广告
    AdLayout0x6cf_SinglePicTxt = 1,               // 一拖多，单图文
    AdLayout0x6cf_MulPicTxt = 2,                  // 一拖多，多图文
    AdLayout0x6cf_AddFan = 3,                      // 一拖多， 关注类
    AdLayout0x6cf_MulPic = 4,                      // 多图
    AdLayout0x6cf_Video = 5,                        //视频
};

typedef NS_ENUM(unsigned int, AdJumpMode_0x6cf) {
    AdJumpMode_Normal   = 1,    //普通外链
    AdJumpMode_APP      = 2,    //app下载页
    AdJumpMode_TOP      = 3,    //七巧板视频置顶落地页
    AdJumpMode_ORIGINAL = 4,    //看点原生视频广告落地页
    AdJumpMode_MidVideo = 5,    //中部视频广告页面
};

typedef NS_ENUM(unsigned int, AdShowStyle_0x6cf) { //一拖三广告显示样式
    AdShowStyle_unknow = 0,
    AdShowStyle_video = 1,                  //视频样式
    AdShowStyle_Picture = 2,                //图片样式
};
typedef NS_ENUM(NSUInteger, PAAdNativeFetchRet) {
    PAAdNativeFetchRet_Sucess = 0,
    PAAdNativeFetchRet_Fail = 10001,
    PAAdNativeFetchRet_Illegal = 10002,
    PAAdNativeFetchRet_ParamErr = 10003,
    PAAdNativeFetchRet_SendRequestFail = 10004,
    PAAdNativeFetchRet_SendingRequest = 10005,
    PAAdNativeFetchRet_NetErr = 10006, // 网络不通
};

typedef NS_ENUM(NSUInteger, PAAdReportType) {
    PAAdReportType_Default = 0,
    PAAdReportType_Click = 1,
    PAAdReportType_Exposure = 2,
    PAAdReportType_NegFeedback = 3,
    PAAdReportType_Close = 4,
    PAAdReportType_Download = 5,
    PAAdReportType_VideoPlay = 6,
    PAAdReportType_Slide = 7,
    PAAdReportType_OpenApp = 8,
    PAAdReportType_InstallApp = 9,
    PAAdReportType_UGCAd_Like = 11,
    PAAdReportType_UGCAd_Comment = 12,
    PAAdReportType_UGCAd_Biu = 13,
    PAAdReportType_UGCAd_Follow = 14,
    PAAdReportType_Click_Pause = 16,//点击暂停
    PAAdReportType_Imax_Slide = 17,//点击imax广告下滑
    PAAdReportType_Click_Resume = 18,//点击继续播放
    PAAdReportType_Click_View_Detail = 19,//点击查看详情
    PAAdReportType_Click_Share = 21,//点击分享
    PAAdReportType_Click_IMAX_Close = 22,//点击关闭
    PAAdReportType_IMAX_AUTO_JUMP = 23,//imax视频页自动跳转到落地页
    PAAdReportType_PopUpWindow_Click = 42,
    PAAdReportType_AdRespond = 80, //端收到或者丢失广告   7.9.2
    PAAdReportType_ExtraExposure = 81,//补充曝光（用作统计，查问题）
    PAAdReportType_InnerAdSubscribe = 108, //文中广告表单提交
    PAAdReportType_SubscribeGame = 109, //预约游戏
    PAAdReportType_RIJNA_SubscribeGame = 110, //文中预约游戏
    PAAdReportType_PhoneCall = 116, //810 看点广告电话组件 点击电话组件
    PAAdReportType_PhoneCancel = 117, //810 看点广告电话组件 点击电话取消
    PAAdReportType_PhoneConfirm = 118 //810 看点广告电话组件 点击确认
};

typedef NS_ENUM(NSUInteger, PAAdReportOrigin) {
    PAAdReportOrigin_Default = 0,
    PAAdReportOrigin_NativeArticle = 1,
    PAAdReportOrigin_Web = 2,
    PAAdReportOrigin_MainFeedsArticle = 3,
    PAAdReportOrigin_VideoChannel = 4,
    PAAdReportOrigin_VideoList = 5,
    PAAdReportOrigin_NativeImg = 6,
    PAAdReportOrigin_NativeVideo = 7,
    PAAdReportOrigin_Gdt = 8,
    PAAdReportOrigin_ShortVideo = 10,
    PAAdReportOrigin_MainFeedsVideo = 11,
    
    PAAdReportOrigin_Ad_68b = 12,//68b广告   7.9.2
    PAAdReportOrigin_Ad_6cf = 13,//6cf广告   7.9.2
    
    PAAdReportOrigin_BrandAdVideo = 17,//799 品牌广告视频
    PAAdReportOrigin_NativeArticleInnerAd = 18,
    PAAdReportOrigin_Ad_6cf_Video_Guide_Card = 21, // 805 看点视频浮层广告播放中引导
    PAAdReportOrigin_FeedsCardClick = 22, //805 feeds流本地卡片样式的点击
    PAAdReportOrigin_AlbumGalleryAdvertisement = 24, //808 图集广告origin
    PAAdReportOrigin_NativeArticleGameComponent = 25, //808 详情页-游戏组件（包括文中游戏，文底游戏）
    PAAdReportOrigin_FloatVideoGameComponent = 26, //808 浮层视频游戏组件
    PAAdReportOrigin_IMAX = 27, //810 Imax广告
    PAAdReportOrigin_PhoneComponent = 28 //810 电话组件
};

typedef NS_ENUM(NSUInteger, PAAdReportOudid) {
    PAAdReportOudid_Default = 0,
    PAAdReportOudid_Spa = 1, // spa
    PAAdReportOudid_Zz = 2, // 增值
    PAAdReportOudid_Omg = 3, // omg
};

typedef enum : NSUInteger {
    
    QQReadInJoyAdClickPositionFeedsAdLogo = 1,
    QQReadInJoyAdClickPositionFeedsAdvertisersAvatar = 2,
    QQReadInJoyAdClickPositionFeedsAdvertisersName = 3,
    QQReadInJoyAdClickPositionFeedsTitle = 4,
    QQReadInJoyAdClickPositionFeedsImage = 5,
    QQReadInJoyAdClickPositionFeedsVideoPlay = 6,
    QQReadInJoyAdClickPositionFeedsButton = 8,
    
    QQReadInJoyAdClickPositionFeedsVideoEndAdvertisersIcon = 15,
    QQReadInJoyAdClickPositionFeedsVideoEndAdvertisersName = 16,
    QQReadInJoyAdClickPositionFeedsVideoEndButton = 17,
    QQReadInJoyAdClickPositionFeedsVideoEndReplayButton = 21,
    
    RIJShortVideoCellAdPopGuideClickWhiteArea = 18,              // 其他空白区域
    RIJShortVideoCellAdPopGuideClickTitle = 35,                  // 标题区域
    RIJShortVideoCellAdPopGuideClickAdvertiserAvatar = 34,       // 广告主头像
    RIJShortVideoCellAdPopGuideClickDesc = 37,                   // 广告描述
    RIJShortVideoCellAdPopGuideClickButton = 38,                 // 按钮区域
    RIJShortVideoCellAdPopGuideClickClose = 39,                  // 关闭按钮
    QQReadInJoyAdPKClickPositionLeftArea = 101,  //PK广告左侧点击
    QQReadInJoyAdPKClickPositionRightArea = 102, //PK广告右侧点击
    QQReadInJoyAdClickPositionBlankArea = 1000,
} QQReadInJoyAdClickPosition;
//extern const NSArray*   g_DomainIpDic = @{@"1":@"imgcache.qq.com",
//                                        @"2":@"imgcache.gtimg.cn",
//                                        @"3":@"i.gtimg.cn",
//                                        @"4":@"collector.weiyun.com",
//                                        @"5":@"pic.pieceup.qq.com",
//                                        @"6":@"shp.qpic.cn",
//                                        @"7":@"jiankang.qq.com"};
//NSArray* const defaultTitlesGroup;
//const CGFloat scaleUItopImgViewW = 80;
extern int bbb;
extern int bb;
//extern NSDictionary* defaultTitlesGroup;
@implementation ViewController{
    TestRunLoop *runloop;
}
//- (IBAction)clickon:(id)sender {
////      const NSDictionary*   g_DomainIpDic = @{@"1":@"imgcache.qq.com",
////                                                 @"2":@"imgcache.gtimg.cn",
////                                                 @"3":@"i.gtimg.cn",
////                                                 @"4":@"collector.weiyun.com",
////                                                 @"5":@"pic.pieceup.qq.com",
////                                                 @"6":@"shp.qpic.cn",
////                                                 @"7":@"jiankang.qq.com"};
//}
+ (NSString *)jsonStringForNSJsonData:(id)object options:(NSJSONWritingOptions)options
{
    if (nil == object)
    {
        return nil;
    }
    
    // add by pangzhang v5.2 补充一个判断 这里可能会出问题
    if (![NSJSONSerialization isValidJSONObject:object])
    {
        return nil;
    }
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:object options:options error:nil];
    if (jsonData)
    {
        NSString *urlArrStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
       // NSString *urlArrStr = CZ_Autorelease(CZ_NewUTF8StringWithData(jsonData));
        return urlArrStr;
    }

    return nil;
}



- (void)viewWillLayoutSubviews{
    
}
- (void)viewDidLayoutSubviews{
    
}

- (void)test:(AdStatSrc) statSrc
{
    switch (statSrc) {
        case AdStatSrc_IMAX_PAGE :
            NSLog(@"test.........true");
            break;
        case AdStatSrc_NONE :
            NSLog(@"test.........none");
            break;
        default:
            break;
    }
    NSLog(@"test.........");
}


- (void)scrollToLandingPageABC:(UITapGestureRecognizer *)tap
{
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@,%@",NSStringFromCGRect(tap.view.bounds),NSStringFromCGRect(tap.view.superview.bounds));
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@",tap.view);
    UITapGestureRecognizer *tap1 = nil;
    NSMutableArray *ieAdUIHandlerViewsArr = [[NSMutableArray alloc] init];
    [ieAdUIHandlerViewsArr addObject:tap];
    [ieAdUIHandlerViewsArr addObject:tap.view];
    if([ieAdUIHandlerViewsArr containsObject:tap1.view])
    {
        NSLog(@"chengjian_test_static scrollToLandingPageABC %@",tap1.view);
    }
    [ieAdUIHandlerViewsArr removeObject:nil];
    [ieAdUIHandlerViewsArr removeObject:nil];
    tap.view.transform = CGAffineTransformMakeScale(1.0, 1.0);
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@",tap.view);
//    tap.view.frame = CGRectMake(120, 500, 40, 90);
    tap.view.frame = CGRectMake(80, 10, 40, 90);
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@,%@",NSStringFromCGRect(tap.view.bounds),NSStringFromCGRect(tap.view.superview.bounds));
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@",tap.view);
//    tap.view.center = self.view.center;
//    MyObject *obj = [[MyObject alloc]init];
//    NSLog(@"chengjian_test_static %p",obj);
//    [obj testStatic];
//    NSArray<UITapGestureRecognizer *>  *grs = [tap.view gestureRecognizers];
//        [UIView animateWithDuration:1 animations:^{
//            NSLog(@"chengjian_ani");
//    //        tap.view.frame = CGRectMake(200, 500, 40, 90);
//            tap.view.transform = CGAffineTransformMakeScale(2.5, 2.5);
//        } completion:^(BOOL finished) {
//            NSLog(@"chengjian_ani end");
//    //        [UIView animateWithDuration:1 animations:^{
//    //            tap.view.transform = CGAffineTransformIdentity;
//    //        }];
//        }];
    //    if(grs && grs.count>0)
    //    {
    //        for (UITapGestureRecognizer *tgr in grs) {
    //            NSLog(@"chengjian_test tgr=%@",tgr);
    //            [tap.view removeGestureRecognizer:tgr];
    //        }
    //    }
    NSLog(@"chengjian_test scrollToLandingPageABC tap=%@",tap);
    NSLog(@"chengjian_test scrollToLandingPageABC....");
}

- (void)scrollToLandingPage:(UITapGestureRecognizer *)tap
{
    NSLog(@"chengjian_test_static scrollToLandingPage before %@",tap.view);
//    tap.view.transform = CGAffineTransformMakeScale(2.5, 2.5);
    tap.view.frame = CGRectMake(tap.view.frame.origin.x + 10, tap.view.frame.origin.y, tap.view.frame.size.width, tap.view.frame.size.height);
    NSLog(@"chengjian_test_static scrollToLandingPage end %@",tap.view);
//    [UIView animateWithDuration:1 animations:^{
//        NSLog(@"chengjian_ani");
////        tap.view.frame = CGRectMake(200, 500, 40, 90);
//        tap.view.transform = CGAffineTransformMakeScale(1.5, 1.5);
//    } completion:^(BOOL finished) {
//        NSLog(@"chengjian_ani end");
////        [UIView animateWithDuration:1 animations:^{
////            tap.view.transform = CGAffineTransformIdentity;
////        }];
//    }];
    NSArray<UITapGestureRecognizer *>  *grs = [tap.view gestureRecognizers];
//    if(grs && grs.count>0)
//    {
//        for (UITapGestureRecognizer *tgr in grs) {
//            NSLog(@"chengjian_test tgr=%@",tgr);
//            [tap.view removeGestureRecognizer:tgr];
//        }
//    }
    NSLog(@"chengjian_test scrollToLandingPage tap=%@",tap);
    NSLog(@"chengjian_test scrollToLandingPage....");
}
////从下往上计算布局
//- (void)layoutSubviews {
//}
- (void)viewDidLoad {
    if(!self.person1.name)
    {
        self.person1.name = @"sdsfdf";
    }
    CGFloat scale11 = 2.0f ;
    CGFloat scale1222 = scale11<1.0f?:10.0f;
//     NSLog(@"viewDidLoad......%@",RIJ_AD_KEY_EXTRA_DATA);
//    NSLog(@"viewDidLoad......%d",PosLayout0x6cf_MultiPicTxt);
    _person1 = [[Person alloc] init];
    bool isque =   [@"cmd_ad_pk_left_click" isEqualToString:PROTEUS_EVENT_CMD_AD_PK_LEFT_CLICK];
    for (int i = 0; i < 10; i++) {
        self.title = @"崩溃ssss1111";
    }
    UIWindow *window1 = [[UIApplication sharedApplication].windows lastObject];
    window1.windowLevel = UIWindowLevelAlert;
    NSArray *windows =  [[UIApplication sharedApplication] windows];
    for (UIWindow *win in windows) {
        NSLog(@"viewDidLoad111: %f", win.windowLevel);
    }
    AdStatSrc aab = AdStatSrc_IMAX_PAGE ;
    NSDictionary * dic1=[NSDictionary dictionaryWithObject:@(aab) forKey:@"key1"];
//    *defaultTitlesGroup = 11;
    int aaaaaa = 10000;
    *testConstInt = 20;
    testConstIntA = &aaaaaa;
    NSLog(@"viewDidLoadssssss:testConstInt=%d,%d,%p,%d,%d", testConstInt,*testConstInt,testConstInt,testConstIntA,*testConstIntA);
    NSLog(@"viewDidLoadssssss:defaultTitlesGroup=%@", defaultTitlesGroup);
    NSLog(@"viewDidLoadssssss ProteusEventCmdAdTripleImgClick: %@", ProteusEventCmdAdTripleImgClick);
    id values = defaultTitlesGroup[@"dd"];
    NSLog(@"viewDidLoadssssss: %d", bbb);
//    NSLog(@"viewDidLoadddd: %@,%@", TestDEfault,TestExtern);
    [self test:nil];
//    NSDictionary * dic1=[NSDictionary dictionaryWithObject:@(aab) forKey:@"key1"];
    AdStatSrc aa=[[dic1 objectForKey:@"key1"] intValue];
//    NSLog(@"test.........aa=%d",aa);
    [self test:aa];
    self.title = @"崩溃1111";
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenRect.size;
    CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat screenX = screenSize.width * scale;
    NSLog(@"viewDidLoadssssss: %d", self.tempRDVTabBarHeight);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //    label = [[UILabel alloc]init];
    UIView *uiview = [[UIView alloc]init];
    uiview.frame = CGRectMake(300, 400, 100, 200);
    uiview.clipsToBounds = YES;
//    uiview.center = self.view.center;
    uiview.backgroundColor = UIColor.greenColor;
    label =UILabel.alloc.init;
    //这一句创建了一个静态文本控件，未指定内容、大小和位置
    label.frame = CGRectMake(0, 10, 40, 90);
//    label.bounds = CGRectMake(0, 0, 80, 100);
//    label.clipsToBounds = YES;
//    label.layer.masksToBounds = YES;
//    label.center = self.view.center;
    NSString *text =@"hello world ddd fffff gfdgg dgdfgf dgfdgfg";
    NSLog(@"dddddd");
    //"@"的作用是把一个c风格的字符串"hello world"包装成一个NSString对象
    label.text = text;
    label.backgroundColor = UIColor.blueColor;
    label.numberOfLines = 1;
    label.userInteractionEnabled = YES;
//    label.lineBreakMode =  NSLineBreakByTruncatingTail;
//    [label sizeToFit];
    
    UIImageView *uiIamgeView = [[UIImageView alloc]init];
    uiIamgeView.frame = CGRectMake(-80, 10, 180, 180);
    [uiIamgeView setImage:[UIImage imageNamed:@"d.jpg"]];
    uiIamgeView.contentMode = UIViewContentModeScaleAspectFit;
    uiIamgeView.backgroundColor = UIColor.redColor;
    uiIamgeView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapScrollPanelGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollToLandingPage:)];
    NSLog(@"chengjian_test tapScrollPanelGesture=%@",tapScrollPanelGesture2);
    [uiIamgeView addGestureRecognizer:tapScrollPanelGesture2];
    
    UITapGestureRecognizer *tapScrollPanelGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollToLandingPage:)];
    NSLog(@"chengjian_test tapScrollPanelGesture=%@",tapScrollPanelGesture);
    [label addGestureRecognizer:tapScrollPanelGesture];
    UITapGestureRecognizer *tapScrollPanelGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollToLandingPageABC:)];
    tapScrollPanelGesture1.numberOfTapsRequired = 2;
    [tapScrollPanelGesture requireGestureRecognizerToFail:tapScrollPanelGesture1];
    NSLog(@"chengjian_test tapScrollPanelGesture1=%@",tapScrollPanelGesture1);
    [label addGestureRecognizer:tapScrollPanelGesture1];
//    CGRect tempFrame = label.frame;
//    tempFrame.origin.y = 20;
//    label.frame = tempFrame;
//    NSLog(@"dddddd %@",label.frame);
//    label.center = self.view.center;
//    label.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:0];
    NSLog(@"dddddd");
    
    NSLog(@"dddddd");
    
    NSLog(@"当前方法名：%@",NSStringFromSelector(_cmd));
    NSLog(@"当前方法名: %s",sel_getName(_cmd));
    NSLog(@"[类 方法]：%s",__func__);
    NSLog(@"[类 方法]：%s",__FUNCTION__);
    NSLog(@"当前类名：%@",NSStringFromClass([self class]));
    NSLog(@"当前行号：%d",__LINE__);
    
    NSLog(@"当前文件存储路径：%s",__FILE__);
    NSString *pathStr = [NSString stringWithCString:__FILE__ encoding:NSUTF8StringEncoding]; //将CString -> NSString
       NSLog(@"当前文件名：%@",[pathStr lastPathComponent]);
    
    NSLog(@"当前日期：%s",__DATE__);
    NSLog(@"当前时间：%s",__TIME__);
    NSLog(@"当前App运行要求的最低ios版本：%d",__IPHONE_OS_VERSION_MIN_REQUIRED);  //Develop Target: 已选8.0
    NSLog(@"当前App支持的最高ios版本：%d",__IPHONE_OS_VERSION_MAX_ALLOWED);    //Develop Target: 最高9.0
    NSLog(@"打印__IPHONE_7_0：%d",__IPHONE_7_0);
    NSLog(@"当前线程：%@",[NSThread currentThread]);
    NSLog(@"主线程：%@",[NSThread mainThread]);
    NSLog(@"当前栈信息：%@", [NSThread callStackSymbols]);
    NSLog(@"bundid：%@", [[NSBundle mainBundle]bundleIdentifier]);
    NSThread *current = NSThread.currentThread;
    NSLog(@"版本号：%@", [[[NSBundle mainBundle]infoDictionary] objectForKey:@"CFBundleVersion"]);
    NSLog(@"显示名字：%@", [NSBundle.mainBundle.infoDictionary objectForKey:@"CFBundleDisplayName"]);
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"test1：%@", [NSBundle.mainBundle.infoDictionary objectForKey:@"CFBundlePackageTypedd"]);
    //    创建button
    NSLog(@"testdd：%@", [NSBundle.mainBundle.infoDictionary objectForKey:@"test"]);
    //    注：设置类型只能在初始化的时候
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //    设置frame
    button.frame = CGRectMake(100, 100, 270, 200);
    //    设置背景颜色,分状态
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"普通Button" forState:UIControlStateNormal];
    [button setTitle:@"高亮Button" forState:UIControlStateHighlighted];
    //    设置文字颜色,分状态
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    //    设置文字阴影,分状态
    [button setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    //    设置文字偏移量
    button.titleLabel.shadowOffset = CGSizeMake(3, 2);
    //    设置内容图片,分状态
    NSString *strResourcesBundle = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"bundle"];
    NSString *strC = [[NSBundle bundleWithPath:strResourcesBundle] pathForResource:@"a" ofType:@"jpg" inDirectory:@"Pictures"];
    NSString *strResourcesBundle1 = [[NSBundle mainBundle] pathForResource:@"fwbundle" ofType:@"bundle"];
//    NSString *strC1 = [[NSBundle bundleWithPath:strResourcesBundle1] pathForResource:@"b" ofType:@"jpg" inDirectory:@"Contents/Resources"];
     NSString *strC1 = [[[NSBundle bundleWithPath:strResourcesBundle1] resourcePath] stringByAppendingFormat:@"/b.jpg"];
    UIImage *imgC = [UIImage imageWithContentsOfFile:strC];
    UIImage *image = [UIImage imageNamed:@"car_h.png"];
//    UIImage *testUmage = [testFWStatic getImage];
    UIImage *testUmage11 = [UIImage imageWithContentsOfFile:strC1];
//    UIImage *image = [UIImage imageNamed:@"c.jpeg"];
    [button setImage:testUmage11 forState:UIControlStateNormal];
    [button setImage:imgC forState:UIControlStateHighlighted];
    //    设置button的imageview的背景
    //    [button setImage:[UIImage imageNamed:@"power_pressed.png"] forState:UIControlStateHighlighted];
    button.imageView.backgroundColor = [UIColor purpleColor];
    button.contentEdgeInsets = UIEdgeInsetsMake(20, 30, 40, 70);
    //    //    设置Button背景图片,分状态
    //   [button setBackgroundImage:[UIImage imageNamed:@"power_bg_img_normal.png"] forState:UIControlStateHighlighted];
    //    [button setBackgroundImage:[UIImage imageNamed:@"power_bg_img_pressed.png"] forState:UIControlStateHighlighted];
    //    添加到ViewController中去
       [self.view addSubview:button];
    //
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    [self.view addSubview:uiview];
    [uiview addSubview:uiIamgeView];
    
    //    //    Button监听事件，非常重要
    //    /**
    //     *addTarget:目标（让谁做这个事情）
    //     *action:方法（做什么事情-->方法）
    //     *forControlEvents:事件
    //     */
    [button addTarget:self action:@selector(demo:) forControlEvents:UIControlEventTouchUpInside];
//    button.cancelsTouchesInView = NO;
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
    sampleProtocol.delegate = self;
//    [label setText:@"Proc..nnsss."];
    [sampleProtocol startSampleProcess];
    // Do any additional setup after loading the view, typically from a nib.
//    Person *person =     [[TestPersonSub   alloc]init];
//    [person eataaa];
    NSLog(@"viewDidLoad 222222222：%@",_person1);
    NextViewController *next =[[NextViewController alloc]init];
    NSLog(@"aaaaaaaaa：%@",next.labels);
    next.labels.text=@"startinghhhh";
    next.view.frame = CGRectMake(0, 250, 120, 400);
//    [self addChildViewController:next];
    NSLog(@"aaaaaaaaa11：%@",next.labels);
    //    next.view.hidden = YES;
    next.view.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:0];
    //    [self.view addSubview:next.view];
    NSLog(@"aaaaaaaaa22：%@",next.labels);
//    self.view.clipsToBounds = NO;
    UITableviewVC *table =[[UITableviewVC alloc]init];
    NSLog(@" UITableviewVC addChildViewController 1");
//    [self addChildViewController:table];
    NSLog(@" UITableviewVC addChildViewController 2");
    table.view.frame = CGRectMake(0, 100, 220, self.view.frame.size.height);
//    table.view.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:255];
//    [self.view addSubview:table.view];
    bool isSubview = [self.view isDescendantOfView:table.view];
    bool isSubview1 = [table.view isDescendantOfView:self.view];
    NSLog(@" UITableviewVC addChildViewController 3 =%d,%d",isSubview,isSubview1);
//    self.view.clipsToBounds = NO;
    //分配内存
    array = [[NSMutableArray alloc] init];
    condition = [[NSCondition alloc] init];
    //    //创建生产者
    //    [NSThread detachNewThreadSelector:@selector(produceAction) toTarget:self withObject:nil];
    //    //创建消费者
    //    [NSThread detachNewThreadSelector:@selector(consumerAction) toTarget:self withObject:nil];
    //    [NSThread detachNewThreadSelector:@selector(consumerAction) toTarget:self withObject:nil];
//    label = UILabel.alloc.init;
    NSLog(@"22222222end");
//    dispatch_queue_t queue = dispatch_queue_create("net.bujige.testQueue", DISPATCH_QUEUE_SERIAL);
//    dispatch_main();
     NSLog(@"22222222end 111");
    // UIBlurEffectStyleLight模式
//    UIVisualEffectView *lightView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
//    lightView.frame = CGRectMake(40, 40, 300, 100);
//    [self.view addSubview:lightView];
    
    // UIBlurEffectStyleExtraLight模式
//    UIVisualEffectView *extraLightView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight]];
//    extraLightView.frame = CGRectMake(40, 160, 300, 100);
//    [self.view addSubview:extraLightView];
    
    // UIBlurEffectStyleDark
//    UIVisualEffectView *darkView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
//    darkView.frame = CGRectMake(40, 280, 300, 100);
//    [self.view addSubview:darkView];
    self.person1 = [[Person alloc] init];
    self.person1.enName = @"最初的名字";
    //observer观察者 (观察self.view对象的属性的变化)
    //KeyPath: 被观察属性的名称
    //options: 观察属性的新值,旧值等的一些配置(枚举值)
    //context:上下文 可以为kvo的回调方法传值
    //这儿的self.view是被观察者
    //注册观察者(可以是多个)
    /*
     options: 有4个值，分别是：
     
     　　NSKeyValueObservingOptionOld 把更改之前的值提供给处理方法
     
     　　NSKeyValueObservingOptionNew 把更改之后的值提供给处理方法
     
     　　NSKeyValueObservingOptionInitial 把初始化的值提供给处理方法，一旦注册，立马就会调用一次。通常它会带有新值，而不会带有旧值。
     
     　　NSKeyValueObservingOptionPrior 分2次调用。在值改变之前和值改变之后。
     */
    self.person1.height = 10;
    [self.person1 addObserver:self forKeyPath:@"enName" options:NSKeyValueObservingOptionOld context:nil];
//    [self.person1 addObserver:self forKeyPath:@"height" options:NSKeyValueObservingOptionNew context:nil];
//    [self.person1 addObserver:self forKeyPath:@"height" options:NSKeyValueObservingOptionNew context:(__bridge void *)self.person1];
//     [self.person1 addObserver:self forKeyPath:@"height" options:NSKeyValueObservingOptionNew context:(__bridge void *)self];
    [self.person1 addObserver:self forKeyPath:@"height" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    [self.person1 addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    //导航栏左按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下划线" style:UIBarButtonItemStylePlain target:self action:@selector(oldAction)];
    //导航栏右按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点语法" style:UIBarButtonItemStylePlain target:self action:@selector(newAction)];
    
    NSLog(@"runloop delay start …");
    [self performSelector:@selector(runOnNewThread) withObject:nil afterDelay:2];
    NSLog(@"runloop delay end..");
}



- (void)runOnNewThread {
//    TestRunLoop *runloop = [[TestRunLoop alloc]init];
//    [runloop testBlock];
    runloop = [[TestRunLoop alloc]init];
    [runloop testPort];
}
- (void)test {
//    NSLog("@chengjian test....")
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"chengjian touchesBegan....");
//    // 默认情况下一个线程只能使用一次, 也就是说只能执行一个操作, 执行完毕之后就不能使用了
//    [self performSelector:@selector(test) onThread:NSThread currentThread withObject:nil waitUntilDone:YES];
}


#pragma mark - kvo的回调方法(系统提供的回调方法)
//keyPath:属性名称
//object:被观察的对象
//change:变化前后的值都存储在change字典中
//context:注册观察者的时候,context传递过来的值
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    id oldName = [change objectForKey:NSKeyValueChangeOldKey];
    NSLog(@"oldName----------%@",oldName);
    id newName = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"oldName----------%@",newName);
//    Person * dd = (__bridge Person *)context;
//    dd.name = @"12121";
//    NSLog(@"newName-----------%@,context=%@,context=%@",newName,dd,dd.name);
    //当界面要消失的时候,移除kvo
    //    [object removeObserver:self forKeyPath:@"name"];
}
#pragma mark - 导航栏按钮方法(如果赋值没有通过setter方法或者是kvc,例如(_name = @"新值"),这个时候不会触发kvc的回调方法)
//通过下划线赋值(不会触发回调方法)
- (void)oldAction {
    [self.person1 changeEnName:@"张三"];
}

//通过点语法赋值
- (void)newAction {
//    [self.person1 changeEnNameFromSetter:@"李四"];
//     [self.person1 changeAgeFromSetter:10];
//    self.person1.height = 100;
     self.person1.age = 100;
    NSLog(@"after newAction");
}

-(void)injected{
    NSLog(@"I've been aaaa injected: %@", self);
    [self.view.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self viewDidLoad];
    //    [self viewWillAppear:YES];
    //    [self viewWillDisappear:YES];
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Sample protocol delegate
-(void)processCompleted{
    //    [label setText:@"Process Completed"];
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}
-(void)demo:(UIButton *) buttona{
    [label removeFromSuperview];
    NSLog(@"%@",buttona);
}

//-(IBAction)clickButton:(UIButton *)button{
//    NSLog(@"%@",button);
//    button.enabled = NO;
//}


- (void)produceAction{
    
    //异常捕捉
    while (true) {
        @try {
            //不管怎么样先上个锁。
            [condition lock];
            while (array.count == 10) {
                NSLog(@"满了，不能再生产了");
                //停止生产，阻塞线程
                [condition wait];
            }
            
            //模拟生产，没0.2~2秒生产一个
            //            [NSThread sleepForTimeInterval:(arc4random()%10+1)/5.0];
            [array addObject:@"牛奶"];
            //同时打印
            NSLog(@"生产了一个产品,当前个数是：%ld",array.count);
            //唤醒消费者(all)所有的
            [condition broadcast];
            
        }
        //可以打印出异常是什么原因！
        @catch (NSException *exception) {
            
            
        }
        @finally {
            //解锁
            [condition unlock];
        }
    }
}
- (void)viewWillAppear:(BOOL)animated{
    
}
- (void)consumerAction{
    
    //异常捕捉
    while (true) {
        @try {
            //不管怎么样先上个锁。
            [condition lock];
            while (array.count == 0) {
                NSLog(@"没有库存了");
                //停止消费，阻塞线程
                [condition wait];
            }
            
            //模拟消费，没0.2~2秒消费一个
            //            [NSThread sleepForTimeInterval:(arc4random()%10+1)/5.0];
            [array removeLastObject];
            //同时打印
            NSLog(@"消费了一个产品,当前个数是：%ld",array.count);
            //唤醒生产者(all)所有的
            [condition broadcast];
            
        }
        @catch (NSException *exception) {
        }
        @finally {
            //解锁
            [condition unlock];
            
        }
        
    }
}



//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
@end

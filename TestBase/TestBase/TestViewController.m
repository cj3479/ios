//
//  TestViewControllerAA.m
//  TestApp1
//
//  Created by chengjian on 2019/5/23.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import "TestViewController.h"
#import "Person.h"
#import "MyMrcView.h"
#import <pthread.h>
#import "TestArcTwo.h"
//#import "TestPersonSub.h"1
#import "NextViewController.h"
#import "UITableviewVC.h"
#import "MyObject.h"
#import "A.h"
#import "B.h"
#import "TestRunLoop.h"
#import "TestWebviewVCViewController.h"
#import "LeakObject.h"
#import <Mach/vm_map.h>
#import <mach/mach.h>
#import <CoreText/CTFont.h>
#import "TestUIImageView.h"
#import "TestMRC.h"
#import "TestMemory.h"
//#import "TestStaticFramework/TestStaticFramework.h"
#import "MeemoDanmuWindowManager.h"
#import "MeemoFloatEntryWindowManager.h"
#import "MeemoFloatEntryWindowManager.h"
#import "MeemoNetworkManager.h"
//#define RCT_CONCAT2(A, B) A ## B
//#define RCT_CONCAT(A, B) RCT_CONCAT2(A, B)
/**
 * Place this macro in your class implementation to automatically register
 * your module with the bridge when it loads. The optional js_name argument
 * will be used as the JS module name. If omitted, the JS module name will
 * match the Objective-C class name.
 */
//#define RCT_EXPORT_MODULE(js_name) \
// //RCT_EXTERN void RCTRegisterModule(Class); \
// //+ (NSString *)moduleName { return @#js_name; } \
// //+ (void)load { RCTRegisterModule(self); }

/**
 * Wrap the parameter line of your method implementation with this macro to
 * expose it to JS. By default the exposed method will match the first part of
 * the Objective-C method selector name (up to the first colon). Use
 * RCT_REMAP_METHOD to specify the JS name of the method.
 *
 * For example, in ModuleName.m:
 *
 * - (void)doSomething:(NSString *)aString withA:(NSInteger)a andB:(NSInteger)b
 * { ... }
 *
 * becomes
 *
 * RCT_EXPORT_METHOD(doSomething:(NSString *)aString
 *                   withA:(NSInteger)a
 *                   andB:(NSInteger)b)
 * { ... }
 *
 * and is exposed to JavaScript as `NativeModules.ModuleName.doSomething`.
 *
 * ## Promises
 *
 * Bridge modules can also define methods that are exported to JavaScript as
 * methods that return a Promise, and are compatible with JS async functions.
 *
 * Declare the last two parameters of your native method to be a resolver block
 * and a rejecter block. The resolver block must precede the rejecter block.
 *
 * For example:
 *
 * RCT_EXPORT_METHOD(doSomethingAsync:(NSString *)aString
 *                           resolver:(RCTPromiseResolveBlock)resolve
 *                           rejecter:(RCTPromiseRejectBlock)reject
 * { ... }
 *
 * Calling `NativeModules.ModuleName.doSomethingAsync(aString)` from
 * JavaScript will return a promise that is resolved or rejected when your
 * native method implementation calls the respective block.
 *
 */
//#define RCT_EXPORT_METHOD(method) \
//  RCT_REMAP_METHOD(, method)

/**
 * Similar to RCT_EXPORT_METHOD but lets you set the JS name of the exported
 * method. Example usage:
 *
 * RCT_REMAP_METHOD(executeQueryWithParameters,
 *   executeQuery:(NSString *)query parameters:(NSDictionary *)parameters)
 * { ... }
 */
//#define RCT_REMAP_METHOD(js_name, method) \
//  RCT_EXTERN_REMAP_METHOD(js_name, method) \
//  - (void)method

/**
 * Use this macro in a private Objective-C implementation file to automatically
 * register an external module with the bridge when it loads. This allows you to
 * register Swift or private Objective-C classes with the bridge.
 *
 * For example if one wanted to export a Swift class to the bridge:
 *
 * MyModule.swift:
 *
 *   @objc(MyModule) class MyModule: NSObject {
 *
 *     @objc func doSomething(string: String! withFoo a: Int, bar b: Int) { ... }
 *
 *   }
 *
 * MyModuleExport.m:
 *
 *   #import "RCTBridgeModule.h"
 *
 *   @interface RCT_EXTERN_MODULE(MyModule, NSObject)
 *
 *   RCT_EXTERN_METHOD(doSomething:(NSString *)string withFoo:(NSInteger)a bar:(NSInteger)b)
 *
 *   @end
 *
 * This will now expose MyModule and the method to JavaScript via
 * `NativeModules.MyModule.doSomething`
 */
//#define RCT_EXTERN_MODULE(objc_name, objc_supername) \
//  RCT_EXTERN_REMAP_MODULE(, objc_name, objc_supername)

/**
 * Like RCT_EXTERN_MODULE, but allows setting a custom JavaScript name.
 */
//#define RCT_EXTERN_REMAP_MODULE(js_name, objc_name, objc_supername) \
//  objc_name : objc_supername \
//  @end \
//  @interface objc_name (RCTExternModule) <RCTBridgeModule> \
//  @end \
//  @implementation objc_name (RCTExternModule) \
//  RCT_EXPORT_MODULE(js_name)

/**
 * Use this macro in accordance with RCT_EXTERN_MODULE to export methods
 * of an external module.
 */
//#define RCT_EXTERN_METHOD(method) \
//  RCT_EXTERN_REMAP_METHOD(, method)

/**
 * Like RCT_EXTERN_REMAP_METHOD, but allows setting a custom JavaScript name.
 */
//#define RCT_EXTERN_REMAP_METHOD(js_name, method) \
//  + (NSArray<NSString *> *)RCT_CONCAT(__rct_export__, \
//    RCT_CONCAT(js_name, RCT_CONCAT(__LINE__, __COUNTER__))) { \
//    return @[@#js_name, @#method]; \
//  }
//#import "testfwstatic/testFWStatic.h"
//#import "testDMlib/TestBundle.h"
#define  PROTEUS_EVENT_CMD_AD_PK_LEFT_CLICK   @"cmd_ad_pk_left_clickg"
#define  PROTEUS_EVENT_CMD_AD_PK_LEFT_CLICK   @"cmd_ad_pk_left_click"
#define  PROTEUS_EVENT_CMD_AD_PK_RIGHT_CLICK  @"cmd_ad_pk_right_click"
#define  PROTEUS_EVENT_CMD_AD_PK_TITLE_CLICK  @"cmd_ad_pk_title_click"
#define  PROTEUS_EVENT_CMD_AD_PK_BOTTOM_CLICK @"cmd_ad_pk_bottom_click"

#pragma mark - 广告解析相关的字段
#define  RIJ_AD_KEY_EXTRA_DATA                @"bytes_extra_data"
#define  RIJ_AD_KEY_SHOWADTYPE                @"showAdType"
#define  RIJ_AD_KEY_PK_VS_BG                  @"pk_ad_vs_pic"
#define  RIJ_AD_KEY_CONTAINER_AD_ITEM         @"container_ad_item"
#define  RIJ_AD_KEY_DEST_URL                  @"dest_url"
#define  RIJ_AD_KEY_RL                        @"rl"
#define  RIJ_AD_KEY_BUTTON_TXT                @"button_txt"
#define  RIJ_AD_KEY_BUTTON_BG                 @"button_bg"
//回包相关model
typedef NS_ENUM (unsigned int, FeedsType_0x6cf) {
    FeedsType0x6cf_Article   = 0,        //普通文章
    FeedsType0x6cf_Advertise = 1,        //位置广告
};

typedef NS_ENUM (unsigned int, PosLayout_0x6cf) {
    PosLayout0x6cf_Normal       = 0,     //普通图文类广告
    PosLayout0x6cf_SinglePicTxt = 1,     //一拖多，单图文
    PosLayout0x6cf_MultiPicTxt  = 2,     //一拖多，多图文
    PosLayout0x6cf_AddFan       = 3,     //一拖多， 关注类
    PosLayout0x6cf_MultiPic     = 4,     //多图
};

typedef NS_ENUM (unsigned int, AdLayout_0x6cf) { // 广告层级，解决一个广告位多条广告的情况
    AdLayout0x6cf_Normal       = 0,      // 普通图文类广告
    AdLayout0x6cf_SinglePicTxt = 1,      // 一拖多，单图文
    AdLayout0x6cf_MulPicTxt    = 2,      // 一拖多，多图文
    AdLayout0x6cf_AddFan       = 3,      // 一拖多， 关注类
    AdLayout0x6cf_MulPic       = 4,      // 多图
    AdLayout0x6cf_Video        = 5,      //视频
};

typedef NS_ENUM (unsigned int, AdJumpMode_0x6cf) {
    AdJumpMode_Normal   = 1,    //普通外链
    AdJumpMode_APP      = 2,    //app下载页
    AdJumpMode_TOP      = 3,    //七巧板视频置顶落地页
    AdJumpMode_ORIGINAL = 4,    //看点原生视频广告落地页
    AdJumpMode_MidVideo = 5,    //中部视频广告页面
};

typedef NS_ENUM (unsigned int, AdShowStyle_0x6cf) { //一拖三广告显示样式
    AdShowStyle_unknow  = 0,
    AdShowStyle_video   = 1,                //视频样式
    AdShowStyle_Picture = 2,                //图片样式
};
typedef NS_ENUM (NSUInteger, PAAdNativeFetchRet) {
    PAAdNativeFetchRet_Sucess          = 0,
    PAAdNativeFetchRet_Fail            = 10001,
    PAAdNativeFetchRet_Illegal         = 10002,
    PAAdNativeFetchRet_ParamErr        = 10003,
    PAAdNativeFetchRet_SendRequestFail = 10004,
    PAAdNativeFetchRet_SendingRequest  = 10005,
    PAAdNativeFetchRet_NetErr          = 10006, // 网络不通
};

typedef NS_ENUM (NSUInteger, PAAdReportType) {
    PAAdReportType_Default             = 0,
    PAAdReportType_Click               = 1,
    PAAdReportType_Exposure            = 2,
    PAAdReportType_NegFeedback         = 3,
    PAAdReportType_Close               = 4,
    PAAdReportType_Download            = 5,
    PAAdReportType_VideoPlay           = 6,
    PAAdReportType_Slide               = 7,
    PAAdReportType_OpenApp             = 8,
    PAAdReportType_InstallApp          = 9,
    PAAdReportType_UGCAd_Like          = 11,
    PAAdReportType_UGCAd_Comment       = 12,
    PAAdReportType_UGCAd_Biu           = 13,
    PAAdReportType_UGCAd_Follow        = 14,
    PAAdReportType_Click_Pause         = 16,//点击暂停
    PAAdReportType_Imax_Slide          = 17,//点击imax广告下滑
    PAAdReportType_Click_Resume        = 18,//点击继续播放
    PAAdReportType_Click_View_Detail   = 19,//点击查看详情
    PAAdReportType_Click_Share         = 21,//点击分享
    PAAdReportType_Click_IMAX_Close    = 22,//点击关闭
    PAAdReportType_IMAX_AUTO_JUMP      = 23,//imax视频页自动跳转到落地页
    PAAdReportType_PopUpWindow_Click   = 42,
    PAAdReportType_AdRespond           = 80, //端收到或者丢失广告   7.9.2
    PAAdReportType_ExtraExposure       = 81,//补充曝光（用作统计，查问题）
    PAAdReportType_InnerAdSubscribe    = 108, //文中广告表单提交
    PAAdReportType_SubscribeGame       = 109, //预约游戏
    PAAdReportType_RIJNA_SubscribeGame = 110, //文中预约游戏
    PAAdReportType_PhoneCall           = 116, //810 看点广告电话组件 点击电话组件
    PAAdReportType_PhoneCancel         = 117, //810 看点广告电话组件 点击电话取消
    PAAdReportType_PhoneConfirm        = 118 //810 看点广告电话组件 点击确认
};

typedef NS_ENUM (NSUInteger, PAAdReportOrigin) {
    PAAdReportOrigin_Default                    = 0,
    PAAdReportOrigin_NativeArticle              = 1,
    PAAdReportOrigin_Web                        = 2,
    PAAdReportOrigin_MainFeedsArticle           = 3,
    PAAdReportOrigin_VideoChannel               = 4,
    PAAdReportOrigin_VideoList                  = 5,
    PAAdReportOrigin_NativeImg                  = 6,
    PAAdReportOrigin_NativeVideo                = 7,
    PAAdReportOrigin_Gdt                        = 8,
    PAAdReportOrigin_ShortVideo                 = 10,
    PAAdReportOrigin_MainFeedsVideo             = 11,

    PAAdReportOrigin_Ad_68b                     = 12,//68b广告   7.9.2
    PAAdReportOrigin_Ad_6cf                     = 13,//6cf广告   7.9.2

    PAAdReportOrigin_BrandAdVideo               = 17,//799 品牌广告视频
    PAAdReportOrigin_NativeArticleInnerAd       = 18,
    PAAdReportOrigin_Ad_6cf_Video_Guide_Card    = 21, // 805 看点视频浮层广告播放中引导
    PAAdReportOrigin_FeedsCardClick             = 22, //805 feeds流本地卡片样式的点击
    PAAdReportOrigin_AlbumGalleryAdvertisement  = 24, //808 图集广告origin
    PAAdReportOrigin_NativeArticleGameComponent = 25, //808 详情页-游戏组件（包括文中游戏，文底游戏）
    PAAdReportOrigin_FloatVideoGameComponent    = 26, //808 浮层视频游戏组件
    PAAdReportOrigin_IMAX                       = 27, //810 Imax广告
    PAAdReportOrigin_PhoneComponent             = 28 //810 电话组件
};

typedef NS_ENUM (NSUInteger, PAAdReportOudid) {
    PAAdReportOudid_Default = 0,
    PAAdReportOudid_Spa     = 1, // spa
    PAAdReportOudid_Zz      = 2, // 增值
    PAAdReportOudid_Omg     = 3, // omg
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
//注册接口实现
QBM_EXPORT_MODULE_PROTOCOL(SampleProtocolDelegate, ViewController);
//extern NSDictionary* defaultTitlesGroup;
@implementation TestViewController
{
    TestRunLoop *runloop;
    NSMutableSet *objs;
    int *residentMemory;
    int *residentVitualMemory;
    LeakOneObject *leakOneObj;
    UIImage *myImage;
    NSData *imageData;
    NSData *date;
    NSData *encodedFont;
    NSMutableArray * testLeakArray;
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
    if (nil == object) {
        return nil;
    }

    // add by pangzhang v5.2 补充一个判断 这里可能会出问题
    if (![NSJSONSerialization isValidJSONObject:object]) {
        return nil;
    }

    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:object options:options error:nil];
    if (jsonData) {
        NSString *urlArrStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        // NSString *urlArrStr = CZ_Autorelease(CZ_NewUTF8StringWithData(jsonData));
        return urlArrStr;
    }

    return nil;
}

- (void)viewWillLayoutSubviews {
}

- (void)viewDidLayoutSubviews {
}

- (void)test:(AdStatSrc)statSrc
{
    switch (statSrc) {
        case AdStatSrc_IMAX_PAGE:
            NSLog(@"test.........true");
            break;
        case AdStatSrc_NONE:
            NSLog(@"test.........none");
            break;
        default:
            break;
    }
    NSLog(@"test.........");
}

- (void)scrollToLandingPageABC:(UITapGestureRecognizer *)tap
{
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@,%@", NSStringFromCGRect(tap.view.bounds), NSStringFromCGRect(tap.view.superview.bounds));
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@", tap.view);
    UITapGestureRecognizer *tap1 = nil;
    NSMutableArray *ieAdUIHandlerViewsArr = [[NSMutableArray alloc] init];
    [ieAdUIHandlerViewsArr addObject:tap];
    [ieAdUIHandlerViewsArr addObject:tap.view];
    if ([ieAdUIHandlerViewsArr containsObject:tap1.view]) {
        NSLog(@"chengjian_test_static scrollToLandingPageABC %@", tap1.view);
    }
    [ieAdUIHandlerViewsArr removeObject:nil];
    [ieAdUIHandlerViewsArr removeObject:nil];
    tap.view.transform = CGAffineTransformMakeScale(1.0, 1.0);
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@", tap.view);
//    tap.view.frame = CGRectMake(120, 500, 40, 90);
    tap.view.frame = CGRectMake(80, 10, 40, 90);
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@,%@", NSStringFromCGRect(tap.view.bounds), NSStringFromCGRect(tap.view.superview.bounds));
    NSLog(@"chengjian_test_static scrollToLandingPageABC %@", tap.view);
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
    NSLog(@"chengjian_test scrollToLandingPageABC tap=%@", tap);
    NSLog(@"chengjian_test scrollToLandingPageABC....");
}

- (void)scrollToLandingPage:(UITapGestureRecognizer *)tap
{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    NSLog(@"chengjian_test_static scrollToLandingPage before %@", tap.view);
//    tap.view.transform = CGAffineTransformMakeScale(2.5, 2.5);
    tap.view.frame = CGRectMake(tap.view.frame.origin.x + 10, tap.view.frame.origin.y, tap.view.frame.size.width, tap.view.frame.size.height);
    NSLog(@"chengjian_test_static scrollToLandingPage end %@", tap.view);
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
    NSArray<UITapGestureRecognizer *> *grs = [tap.view gestureRecognizers];
//    if(grs && grs.count>0)
//    {
//        for (UITapGestureRecognizer *tgr in grs) {
//            NSLog(@"chengjian_test tgr=%@",tgr);
//            [tap.view removeGestureRecognizer:tgr];
//        }
//    }
    NSLog(@"chengjian_test scrollToLandingPage tap=%@", tap);
    NSLog(@"chengjian_test scrollToLandingPage....");
}

////从下往上计算布局
//- (void)layoutSubviews {
//}

+ (instancetype)qn_cast:(id)any warnOnFailure:(BOOL)warnOnFailure {
    if (any) {
        if ([any isKindOfClass:[self class]]) {
            return any;
        } else if (warnOnFailure) {
        }
    }

    return nil;
}

- (void)viewDidLoad {
//    TestStaticFramework *dd = [[TestStaticFramework alloc] init];
//    [dd testMethodOne];
    self->_person1 = nil;
    self.stSubDetailInfo = [[Person alloc]init];
    Person *qqq = [[Person alloc]init];
    [TestViewController qn_cast:qqq warnOnFailure:true].person1 = [[Person alloc]init];
    NSLog(@"self.stSubDetailInfo %@", self.stSubDetailInfo);
    NSLog(@"person1 %@", [TestViewController qn_cast:qqq warnOnFailure:true].person1);
//    NSAssert(NO, @"建议看看是什么场景异常了");
//    [testFWStatic getImage];
    // 获取info字典
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    NSMutableDictionary *infoDict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
    NSString *version = [infoDict objectForKey:@"CFBundleShortVersionString"];
//    NSLog(@"fsdf %@",MTTDebugItemQQLoginKey);
    // 或者
    NSDictionary *tempInfoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *tempExecutable = [tempInfoDict objectForKey:@"CFBundleExecutable"];
    NSString *tempAppName = [tempInfoDict objectForKey:@"CFBundleDisplayName"];
    NSString *tempVersion = [tempInfoDict objectForKey:@"CFBundleShortVersionString"];
    NSLog(@"info %@", infoDict);

    if (!self.person1.name) {
        self.person1.name = @"sdsfdf";
    }
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    CGFloat scale11 = 2.0f;
    CGFloat scale1222 = scale11 < 1.0f ? : 10.0f;
//     NSLog(@"viewDidLoad......%@",RIJ_AD_KEY_EXTRA_DATA);
//    NSLog(@"viewDidLoad......%d",PosLayout0x6cf_MultiPicTxt);
    _person1 = [[Person alloc] init];
    bool isque =   [@"cmd_ad_pk_left_click" isEqualToString:PROTEUS_EVENT_CMD_AD_PK_LEFT_CLICK];
    for (int i = 0; i < 10; i++) {
        self.title = @"崩溃ssss1111";
    }
//    UIWindow *window1 = [[UIApplication sharedApplication].windows lastObject];
//    window1.windowLevel = UIWindowLevelAlert;
//    NSArray *windows =  [[UIApplication sharedApplication] windows];
//    for (UIWindow *win in windows) {
//        NSLog(@"viewDidLoad111: %f", win.windowLevel);
//    }
    AdStatSrc aab = AdStatSrc_IMAX_PAGE;
    NSDictionary *dic1 = [NSDictionary dictionaryWithObject:@(aab) forKey:@"key1"];
//    *defaultTitlesGroup = 11;
    int aaaaaa = 10000;
    *testConstInt = 20;
    testConstIntA = &aaaaaa;
    NSLog(@"viewDidLoadssssss:testConstInt=%d,%d,%p,%d,%d", testConstInt, *testConstInt, testConstInt, testConstIntA, *testConstIntA);
    NSLog(@"viewDidLoadssssss:defaultTitlesGroup=%@", defaultTitlesGroup);
    NSLog(@"viewDidLoadssssss ProteusEventCmdAdTripleImgClick: %@", ProteusEventCmdAdTripleImgClick);
    id values = defaultTitlesGroup[@"dd"];
    NSLog(@"viewDidLoadssssss: %d", bbb);
//    NSLog(@"viewDidLoadddd: %@,%@", TestDEfault,TestExtern);
    [self test:nil];
//    NSDictionary * dic1=[NSDictionary dictionaryWithObject:@(aab) forKey:@"key1"];
    AdStatSrc aa = [[dic1 objectForKey:@"key1"] intValue];
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
    label = UILabel.alloc.init;
    //这一句创建了一个静态文本控件，未指定内容、大小和位置
    label.frame = CGRectMake(0, 10, 40, 90);
//    label.bounds = CGRectMake(0, 0, 80, 100);
//    label.clipsToBounds = YES;
//    label.layer.masksToBounds = YES;
//    label.center = self.view.center;
    NSString *text = @"hello world ddd fffff gfdgg dgdfgf dgfdgfg";
    NSLog(@"dddddd");
    //"@"的作用是把一个c风格的字符串"hello world"包装成一个NSString对象
    label.text = text;
    label.backgroundColor = UIColor.blueColor;
    label.numberOfLines = 1;
    label.userInteractionEnabled = YES;
//    label.lineBreakMode =  NSLineBreakByTruncatingTail;
//    [label sizeToFit];

    self.uiImageView = [[UIImageView alloc]init];
    self.uiImageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:self.uiImageView];
//    [uiIamgeView setImage:[UIImage imageNamed:@"d.jpg"]];
//    uiIamgeView.contentMode = UIViewContentModeScaleAspectFit;
//    uiIamgeView.backgroundColor = UIColor.redColor;
//    uiIamgeView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapScrollPanelGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollToLandingPage:)];
    NSLog(@"chengjian_test tapScrollPanelGesture=%@", tapScrollPanelGesture2);
//    [uiIamgeView addGestureRecognizer:tapScrollPanelGesture2];

    UITapGestureRecognizer *tapScrollPanelGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollToLandingPage:)];
    NSLog(@"chengjian_test tapScrollPanelGesture=%@", tapScrollPanelGesture);
    [label addGestureRecognizer:tapScrollPanelGesture];
    UITapGestureRecognizer *tapScrollPanelGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollToLandingPageABC:)];
    tapScrollPanelGesture1.numberOfTapsRequired = 2;
    [tapScrollPanelGesture requireGestureRecognizerToFail:tapScrollPanelGesture1];
    NSLog(@"chengjian_test tapScrollPanelGesture1=%@", tapScrollPanelGesture1);
    [label addGestureRecognizer:tapScrollPanelGesture1];
//    CGRect tempFrame = label.frame;
//    tempFrame.origin.y = 20;
//    label.frame = tempFrame;
//    NSLog(@"dddddd %@",label.frame);
//    label.center = self.view.center;
//    label.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:0];
    NSLog(@"dddddd");

    NSLog(@"dddddd");

    NSLog(@"当前方法名：%@", NSStringFromSelector(_cmd));
    NSLog(@"当前方法名: %s", sel_getName(_cmd));
    NSLog(@"[类 方法]：%s", __func__);
    NSLog(@"[类 方法]：%s", __FUNCTION__);
    NSLog(@"当前类名：%@", NSStringFromClass([self class]));
    NSLog(@"当前行号：%d", __LINE__);

    NSLog(@"当前文件存储路径：%s", __FILE__);
    NSString *pathStr = [NSString stringWithCString:__FILE__ encoding:NSUTF8StringEncoding]; //将CString -> NSString
    NSLog(@"当前文件名：%@", [pathStr lastPathComponent]);

    NSLog(@"当前日期：%s", __DATE__);
    NSLog(@"当前时间：%s", __TIME__);
    NSLog(@"当前App运行要求的最低ios版本：%d", __IPHONE_OS_VERSION_MIN_REQUIRED);  //Develop Target: 已选8.0
    NSLog(@"当前App支持的最高ios版本：%d", __IPHONE_OS_VERSION_MAX_ALLOWED);    //Develop Target: 最高9.0
    NSLog(@"打印__IPHONE_7_0：%d", __IPHONE_7_0);
    NSLog(@"当前线程：%@", [NSThread currentThread]);
    NSLog(@"主线程：%@", [NSThread mainThread]);
    NSLog(@"当前栈信息：%@", [NSThread callStackSymbols]);
    NSLog(@"bundid：%@", [[NSBundle mainBundle]bundleIdentifier]);
    NSThread *current = NSThread.currentThread;
    NSLog(@"版本号：%@", [[[NSBundle mainBundle]infoDictionary] objectForKey:@"CFBundleVersion"]);
    NSLog(@"显示名字：%@", [NSBundle.mainBundle.infoDictionary objectForKey:@"CFBundleDisplayName"]);
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"test1：%@", [NSBundle.mainBundle.infoDictionary objectForKey:@"CFBundlePackageTypedd"]);
    //    创建button
    NSLog(@"testdd：%@", [NSBundle.mainBundle.infoDictionary objectForKey:@"test"]);

    //    设置内容图片,分状态
    NSString *strResourcesBundle = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"bundle"];
    NSString *strC = [[NSBundle bundleWithPath:strResourcesBundle] pathForResource:@"a" ofType:@"jpg" inDirectory:@"Pictures"];
    NSString *strResourcesBundle1 = [[NSBundle mainBundle] pathForResource:@"fwbundle" ofType:@"bundle"];
    NSString *strC1 = [[NSBundle bundleWithPath:strResourcesBundle1] pathForResource:@"b" ofType:@"jpg" inDirectory:@"Contents/Resources"];
//     NSString *strC1 = [[[NSBundle bundleWithPath:strResourcesBundle1] resourcePath] stringByAppendingFormat:@"/b.jpg"];
    UIImage *imgC = [UIImage imageWithContentsOfFile:strC];
    UIImage *image = [UIImage imageNamed:@"car_h.png"];
//    UIImage *testUmage = [TestBundle testDMBundle];
    UIImage *testUmage11 = [UIImage imageWithContentsOfFile:strC1];

    //    注：设置类型只能在初始化的时候
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    CGFloat x = 100;
    CGFloat yStart = 70;
    CGFloat yDiff = 10;
    CGFloat width = 250;
    CGFloat height = 35;
    //    设置frame
    button.frame = CGRectMake(x, yStart, width, height);
    //    设置背景颜色,分状态
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"push VC" forState:UIControlStateNormal];
    [button setTitle:@"push VC" forState:UIControlStateHighlighted];
    //    设置文字颜色,分状态
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    //    设置文字阴影,分状态
    [button setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    //    设置文字偏移量
    button.titleLabel.shadowOffset = CGSizeMake(3, 2);
//    UIImage *image = [UIImage imageNamed:@"c.jpeg"];
//    [button setImage:testUmage forState:UIControlStateNormal];
    [button setImage:imgC forState:UIControlStateHighlighted];
    //    设置button的imageview的背景
    //    [button setImage:[UIImage imageNamed:@"power_pressed.png"] forState:UIControlStateHighlighted];
    button.imageView.backgroundColor = [UIColor purpleColor];
    button.contentEdgeInsets = UIEdgeInsetsMake(20, 10, 40, 70);
    [button addTarget:self action:@selector(pushVC:) forControlEvents:UIControlEventTouchUpInside];
    //    //    设置Button背景图片,分状态
    //   [button setBackgroundImage:[UIImage imageNamed:@"power_bg_img_normal.png"] forState:UIControlStateHighlighted];
    //    [button setBackgroundImage:[UIImage imageNamed:@"power_bg_img_pressed.png"] forState:UIControlStateHighlighted];
    //    添加到ViewController中去
    [self.view addSubview:button];
    //
    UIButton *memoryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    memoryButton.frame = CGRectMake(x, button.frame.origin.y + height + yDiff, width, height);
    [memoryButton setTitle:@"testPhysicalMemory" forState:UIControlStateNormal];
    memoryButton.backgroundColor = [UIColor redColor];
    [memoryButton addTarget:self action:@selector(testPhysicalMemory:) forControlEvents:UIControlEventTouchUpInside];
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    [self.view addSubview:memoryButton];

    UIButton *virtualMemoryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    virtualMemoryButton.frame = CGRectMake(x, memoryButton.frame.origin.y + height + yDiff, width, height);
    [virtualMemoryButton setTitle:@"testVirtualMemory" forState:UIControlStateNormal];
    virtualMemoryButton.backgroundColor = [UIColor redColor];
    [virtualMemoryButton addTarget:self action:@selector(testVirtualMemory:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:virtualMemoryButton];

    UIButton *residentMemoryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    residentMemoryButton.frame = CGRectMake(x, virtualMemoryButton.frame.origin.y + height + yDiff, width, height);
    [residentMemoryButton setTitle:@"testResidentMemory" forState:UIControlStateNormal];
    residentMemoryButton.backgroundColor = [UIColor redColor];
    [residentMemoryButton addTarget:self action:@selector(testResidentMemory:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:residentMemoryButton];

    UIButton *residentVitualMemoryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    residentVitualMemoryButton.frame = CGRectMake(x, residentMemoryButton.frame.origin.y + height + yDiff, width, height);
    [residentVitualMemoryButton setTitle:@"testResidentVitualMemory" forState:UIControlStateNormal];
    residentVitualMemoryButton.backgroundColor = [UIColor redColor];
    [residentVitualMemoryButton addTarget:self action:@selector(testResidentVitualMemory:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:residentVitualMemoryButton];

    UIButton *testImgageMemoryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testImgageMemoryButton.frame = CGRectMake(x, residentVitualMemoryButton.frame.origin.y + height + yDiff, width, height);
    [testImgageMemoryButton setTitle:@"testImageMemory" forState:UIControlStateNormal];
    testImgageMemoryButton.backgroundColor = [UIColor redColor];
    [testImgageMemoryButton addTarget:self action:@selector(testImageMemory:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testImgageMemoryButton];

    UIButton *testVMAllocateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testVMAllocateButton.frame = CGRectMake(x, testImgageMemoryButton.frame.origin.y + height + yDiff, width, height);
    [testVMAllocateButton setTitle:@"testVMAllocate" forState:UIControlStateNormal];
    testVMAllocateButton.backgroundColor = [UIColor redColor];
    [testVMAllocateButton addTarget:self action:@selector(testVMLAollcate:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testVMAllocateButton];

    UIButton *testVMAllocateWithDirtyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testVMAllocateWithDirtyButton.frame = CGRectMake(x, testVMAllocateButton.frame.origin.y + height + yDiff, width, height);
    [testVMAllocateWithDirtyButton setTitle:@"testVMAllocateWithDirty" forState:UIControlStateNormal];
    testVMAllocateWithDirtyButton.backgroundColor = [UIColor redColor];
    [testVMAllocateWithDirtyButton addTarget:self action:@selector(testVMLAollcateWithDirty:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testVMAllocateWithDirtyButton];

    UIButton *testThreadButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testThreadButton.frame = CGRectMake(x, testVMAllocateWithDirtyButton.frame.origin.y + height + yDiff, width, height);
    [testThreadButton setTitle:@"testThreadButton" forState:UIControlStateNormal];
    testThreadButton.backgroundColor = [UIColor redColor];
    [testThreadButton addTarget:self action:@selector(testThreadButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testThreadButton];

    UIButton *testMemoryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testMemoryButton.frame = CGRectMake(x, testThreadButton.frame.origin.y + height + yDiff, width, height);
    [testMemoryButton setTitle:@"testMemoryLeak" forState:UIControlStateNormal];
    testMemoryButton.backgroundColor = [UIColor redColor];
    [testMemoryButton addTarget:self action:@selector(testMemoryLeak:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testMemoryButton];

    UIButton *testFontButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testFontButton.frame = CGRectMake(x, testThreadButton.frame.origin.y + height + yDiff, width, height);
    [testFontButton setTitle:@"testFont" forState:UIControlStateNormal];
    testFontButton.backgroundColor = [UIColor redColor];
    [testFontButton addTarget:self action:@selector(testFont:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testFontButton];

    TestUIImageView *uiImageView = [[TestUIImageView alloc] init];
    uiImageView.frame = CGRectMake(0, 0, 10, 10);
    uiImageView.layer.backgroundColor = [[UIColor redColor] CGColor];
    [self.view addSubview:uiImageView];
    self.view.backgroundColor = [UIColor blackColor];
    NSLog(@"chengjian TestUIImageView  layer=%@", uiImageView.layer);
//    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
//    [self.view addSubview:uiview];
//    [uiview addSubview:uiIamgeView];

    //    //    Button监听事件，非常重要
    //    /**
    //     *addTarget:目标（让谁做这个事情）
    //     *action:方法（做什么事情-->方法）
    //     *forControlEvents:事件
    //     */
//    button.cancelsTouchesInView = NO;
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
    sampleProtocol.delegate = self;
//    [label setText:@"Proc..nnsss."];
    [sampleProtocol startSampleProcess];
    // Do any additional setup after loading the view, typically from a nib.
//    Person *person =     [[TestPersonSub   alloc]init];
//    [person eataaa];
    NSLog(@"viewDidLoad 222222222：%@", _person1);
//    NextViewController *next =[[NextViewController alloc]init];
//    NSLog(@"aaaaaaaaa：%@",next.labels);
//    next.labels.text=@"startinghhhh";
//    next.view.frame = CGRectMake(0, 250, 120, 400);
////    [self addChildViewController:next];
//    NSLog(@"aaaaaaaaa11：%@",next.labels);
//    //    next.view.hidden = YES;
//    next.view.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:0];
////    [self.view addSubview:next.view];
//    NSLog(@"aaaaaaaaa22：%@",next.labels);
//    self.view.clipsToBounds = NO;
//    UITableviewVC *table =[[UITableviewVC alloc]init];
//    NSLog(@" UITableviewVC addChildViewController 1");
//    [self addChildViewController:table];
//    NSLog(@" UITableviewVC addChildViewController 2");
//    table.view.frame = CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height);
//    table.view.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:255];
//    [self.view addSubview:table.view];
//    bool isSubview = [self.view isDescendantOfView:table.view];
//    bool isSubview1 = [table.view isDescendantOfView:self.view];
//    NSLog(@" UITableviewVC addChildViewController 3 =%d,%d",isSubview,isSubview1);
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
//    [self.person1 addObserver:self forKeyPath:@"height" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
//    [self.person1 addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
//    //导航栏左按钮
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下划线" style:UIBarButtonItemStylePlain target:self action:@selector(oldAction)];
//    //导航栏右按钮
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点语法" style:UIBarButtonItemStylePlain target:self action:@selector(newAction)];
//
//    NSLog(@"runloop delay start …");
//    [self performSelector:@selector(runOnNewThread) withObject:nil afterDelay:2];
//    NSLog(@"runloop delay end..");
}

- (void)runOnNewThread {
    TestRunLoop *runloop1 = [[TestRunLoop alloc]init];
//    runloop1.age = 10l;
    [runloop1 testBlock];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [runloop testBlock];
        NSLog(@"chengjian touchesBegan....");
    });
//    NSLog(@"chengjian touchesBegan....%d",runloop1.age);
    //crash test
//    TestRunLoop *runloop1 = [[TestRunLoop alloc]init];
//    [runloop1 testPort];
    NSLog(@"chengjian touchesBegan....");
}

- (void)test {
//    NSLog("@chengjian test....")
}

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"chengjian touchesBegan....");
////    // 默认情况下一个线程只能使用一次, 也就是说只能执行一个操作, 执行完毕之后就不能使用了
////    [self performSelector:@selector(test) onThread:NSThread currentThread withObject:nil waitUntilDone:YES];
//}

#pragma mark - kvo的回调方法(系统提供的回调方法)
//keyPath:属性名称
//object:被观察的对象
//change:变化前后的值都存储在change字典中
//context:注册观察者的时候,context传递过来的值
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *, id> *)change context:(void *)context {
    id oldName = [change objectForKey:NSKeyValueChangeOldKey];
    NSLog(@"oldName----------%@", oldName);
    id newName = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"oldName----------%@", newName);
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

- (void)injected {
    NSLog(@"I've been aaaa injected: %@", self);
    [self.view.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self viewDidLoad];
    //    [self viewWillAppear:YES];
    //    [self viewWillDisappear:YES];
    self.view.backgroundColor = [UIColor blueColor];
}

//RCT_EXPORT_METHOD(test111:(BOOL)animated){
//    NSLog(@"RCT_EXPORT_MODULE（test111");
//}
//
//RCT_EXPORT_METHOD(test222:(BOOL)animated){
//    NSLog(@"RCT_EXPORT_MODULE（test111");
//}
//
//RCT_EXPORT_MODULE(didReceiveMemoryWarning11){
//    NSLog(@"RCT_EXPORT_MODULE（test111");
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Sample protocol delegate
- (void)processCompleted {
    //    [label setText:@"Process Completed"];
}


- (void)pushVC:(UIButton *)buttona {
//    [label removeFromSuperview];
    TestWebviewVCViewController *vc = [[TestWebviewVCViewController alloc]init];
//    self.testWebviewVCViewController = vc;
//    vc.testViewController = self;
//    [self presentViewController:vc animated:false completion:nil];
    [self.navigationController pushViewController:vc animated:true];
//    NSLog(@"%@",buttona);
//    NSArray *testArray = @[@"11",@"22"];
//    NSString *value = testArray[3];
//    int *pi = (int *)0x00001111;
//    *pi = 17;
}

- (void)testPhysicalMemory:(UIButton *)button {
    int length = 80000000;
    int *array = malloc(length * sizeof(int));
    for (int i = 0; i < length; i++) {
        array[i] = 32;
    }
    NSLog(@"chengjian_test testPhysicalMemory");
//    residentMemory = malloc(10);
//    self.blk = ^{
//        NSLog(@"chengjian_test %p", self->residentMemory); //因为实例变量的访问等价于self->_myAnimal,也等价于(*self)._myAnimal;所以这里会导致block强引用self.
//    };
//    self.blk();
}

- (void)testVirtualMemory:(UIButton *)button {
    int length = 4000000;
    int *array = malloc(length * sizeof(int));
    for (int i = 0; i < length / 4; i++) {
        array[i] = 32;
    }
    NSLog(@"chengjian_test testPhysicalMemory");
}

- (void)testResidentMemory:(UIButton *)button {
//    if (nil != residentMemory) {
//        free(residentMemory);
//    }
    int length = 8000000;
    residentMemory = malloc(length * sizeof(int));
    for (int i = 0; i < length / 4; i++) {
        residentMemory[i] = 32;
    }
    NSLog(@"chengjian_test testResidentMemory");
}

- (void)testResidentVitualMemory:(UIButton *)button {
    int length = 8000000;
    residentVitualMemory = malloc(length * sizeof(int));
    NSLog(@"chengjian_test testResidentVitualMemory");
}

- (void)testImageMemory:(UIButton *)button {
    UIImage *image = [UIImage imageNamed:@"super_big_2.jpeg"];
//    imageData = [NSData dataWithData:UIImagePNGRepresentation(image)];
//    date = UIImagePNGRepresentation(image);
//    [date  dealloc];
//    CFDictionaryRef dicOptionsRef = (__bridge CFDictionaryRef)@{ (id)kCGImageSourceShouldCache: @false};
//    CGImageSourceRef cgimage = CGImageSourceCreateWithData((CFDataRef)date, dicOptionsRef);
//    NSLog(@"chengjian_test cgimage=%@",cgimage);
//    NSDictionary *nDict = (__bridge_transfer  NSDictionary*)(dicOptionsRef);
//    NSLog(@"chengjian_test cgimage=%@",nDict);
    self.uiImageView.image =  [self scaleImageWithSize:CGSizeMake(1500, 1000) source:nil];
//    self.uiImageView.image =  [self kj_ImageIOChangeImageSize:CGSizeMake(2024, 2024) source:nil];
//    self.uiImageView.image =  image;
//    myImage = image;
//    date = nil;
}

- (UIImage *)kj_ImageIOChangeImageSize:(CGSize)size source:(UIImage *)source {
//    NSString * path = [[NSBundle mainBundle]pathForResource:@"image" ofType:@"ico"];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"big_one" ofType:@"jpg"];
    NSURL *url = [NSURL URLWithString:@"https://www.2008php.com/09_Website_appreciate/10-07-11/1278861720_g.jpg"];
//    NSURL *url = [NSURL fileURLWithPath:path];
//    NSData *date = UIImagePNGRepresentation(source);
    CGFloat max = size.width;
    if (max < size.height) max = size.height;
    CFDictionaryRef dicOptionsRef = (__bridge CFDictionaryRef)@{ (id)kCGImageSourceCreateThumbnailFromImageIfAbsent: @(YES),
                                                                 (id)kCGImageSourceThumbnailMaxPixelSize: @(max), (id)kCGImageSourceShouldCache: @(NO) };
//    CGImageSourceRef src = CGImageSourceCreateWithData((__bridge CFDataRef)date, nil);
    CGImageSourceRef src = CGImageSourceCreateWithURL((CFURLRef)url, NULL);

    NSDictionary *imageHeader = (__bridge NSDictionary *)CGImageSourceCopyPropertiesAtIndex(src, 0, NULL);
    NSLog(@"Image header %@", imageHeader);
    NSLog(@"PixelHeight %@", [imageHeader objectForKey:@"PixelHeight"]);
    CGImageRef imageRef = CGImageSourceCreateThumbnailAtIndex(src, 0, dicOptionsRef);
    UIImage *newImage = [UIImage imageWithCGImage:imageRef];
    NSLog(@"chengjian_test kj_ImageIOChangeImageSize max=%f height=%f, width=%f scale=%f,length=%lu,size.height=%f, size.width=%f", max, newImage.size.height, newImage.size.width, newImage.scale, (unsigned long)date.length, size.height, size.width);
    if (imageRef != nil) CFRelease(imageRef);
    CFRelease(src);
    return newImage;
}

/**
 缩放图片到指定Size
 */
- (UIImage *)scaleImageWithSize:(CGSize)size source:(UIImage *)nouse {
//    NSString * path = [[NSBundle mainBundle]pathForResource:@"super_big_1" ofType:@"jpeg"];
//    UIImage *source = [UIImage imageWithContentsOfFile:path];
    UIImage *source = [UIImage imageNamed:@"big0.jpeg"];
    //创建上下文
    UIGraphicsBeginImageContextWithOptions(size, NO, 1);
    NSLog(@"chengjian_test scaleImageWithSize scale=%f", source.scale);
    //产生中间的bitmap
    //绘图
    [source drawInRect:CGRectMake(0, 0, size.width, size.height)];

    //获取新图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    NSLog(@"chengjian_test scaleImageWithSize height=%f, width=%f scale=%f", newImage.size.height, newImage.size.width, newImage.scale);
    UIGraphicsEndImageContext();

    return newImage;
}

- (void)testVMLAollcate:(UIButton *)button {
    vm_address_t address;
    vm_size_t size = 1024 * 1024 * 100;
    vm_allocate((vm_map_t)mach_task_self(), &address, size, VM_MEMORY_MALLOC_SMALL | VM_FLAGS_ANYWHERE);
}

- (void)testVMLAollcateWithDirty:(UIButton *)button {
    vm_address_t address;
    vm_size_t size = 1024 * 1024 * 100;
    vm_allocate((vm_map_t)mach_task_self(), &address, size, VM_MEMORY_MALLOC_LARGE | VM_FLAGS_ANYWHERE);
    for (int i = 0; i < 1024 * 1024 * 100; ++i) {
        *((char *)address + i) = 0xab;
    }

//    for (int i = 0; i < 100; ++i) {
//        [self startThread];
//    }
}

- (void)testThreadButton:(UIButton *)button {
    MyMrcView *view = [[MyMrcView alloc] init];
    NSDictionary *dic = @{ @"dd": @"abcd", @"self": self, @"num": @1 };
    NSNumber *fileSize = [dic objectForKey:@"dd"];
    
//    [@"dd" stringByAppendingString:@"dd"];
    NSLog(@"chengjian_test testThreadButton thread=%@  fileSize=%d", fileSize,[fileSize intValue]);
//    for (int i = 0; i < 1; ++i) {
//        [self startThread];
//    }
//    testLeakArray =[[NSMutableArray alloc] init];
//    TestWebviewVCViewController *vc2 =[[TestWebviewVCViewController alloc] init];
//    [vc2 testBlock];
//    [testLeakArray addObject:vc2];
//    NSLog(@"chengjian_test before size=%lu,array=%@ ", (unsigned long)[testLeakArray count],testLeakArray);
//    [testLeakArray removeObject:vc2];
//    NSLog(@"chengjian_test delete size=%lu,rray=%@",  [testLeakArray count], testLeakArray);
//    [TestMRC testMrc];
//    TestMRC *mrc = [TestMRC testMrc];
//    [mrc testMrc];
//    TestMemory *testMemory = [[TestMemory alloc] init];
//    [testMemory testSanitizer];
//    TestMRC *mrc1 = mrc;
//    [TestMRC testMrc];
//    [[[TestArcTwo alloc ] init] testMockArc];
//    NSString *urlStr = @"?sns=中国&openId=81918420257735976&lang=zh&partition=1&region=ID&uid=5100016370&name=cjtest&gender=1&rank=101&level=3";
//    NSURL *url = [NSURL URLWithString:urlStr];
//    url = [NSURL URLWithString:[urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
//    NSURLComponents *urlComponents = [[NSURLComponents alloc] initWithString:url.absoluteString];
//    [urlComponents.queryItems enumerateObjectsUsingBlock:^(NSURLQueryItem *_Nonnull obj, NSUInteger idx, BOOL *_Nonnull stop) {
//        NSLog(@"chengjian_test obj.name=%@,obj.value =%@", obj.name, obj.value);
//    }];
//    NSURL *url1 = [NSURL URLWithString:@"?sns=aa&openId=81918420257735976&lang=zh&partition=1&region=ID&uid=5100016370&name=cjtest&gender=1&rank=101&level=3"];
//    NSMutableDictionary *paramer = [[NSMutableDictionary alloc]init];
//    NSString *openid = paramer[@"openId"];
//    NSString *uid = paramer[@"uid"];
//    NSLog(@"chengjian_test url=%@ openid=%@ uid=%@", url, openid, uid);
//    NSLog(@"chengjian_test urlComponents=%@", urlComponents);
}

#define FONT_CLASS UIFont
- (void)testMemoryLeak:(UIButton *)button {
    NSLog(@"chengjian_test testMemoryLeak familyName=%@", [UIFont systemFontOfSize:14].familyName);
//    // 构造循环引用
    LeakObject *leakObj = [[LeakObject alloc] init];
    LeakOneObject *leakOneObj1 = [[LeakOneObject alloc] init];
    leakObj.leakOneObject = leakOneObj1;
    leakOneObj1.leakObj1 = leakObj;
    leakObj = nil;
    if (leakObj) {
        NSLog(@"chengjian_test leakObj 11111111 ");
    }
//    [leakObj description];
//    int length = 4000000;
//    int *array = malloc(length * sizeof(int));
//    for (int i = 0; i < length; i++) {
//        array[i] = 32;
//    }
}

typedef FourCharCode CTFontTableTag;
- (void)testFont:(UIButton *)button {
    NSLog(@"chengjian_test testFont familyName=%@", [UIFont systemFontOfSize:14].familyName);
//    UIFont *originalFont = [UIFont fontWithName:@".AppleSystemUIFont11" size:48];
//    UIFont *originalFont1 = [UIFont fontNamesForFamilyName:@".AppleSystemUIFont11"];
    NSString *emoji = @"Apple Color Emoji";
    CTFontRef fontRef = CTFontCreateWithName((__bridge CFStringRef)emoji, 30, NULL);
//    CFDataRef dataRef = CTFontCopyTable(fontRef, (CTFontTableTag)1935829368, kCTFontTableOptionNoOptions);
    CFDataRef dataRef = CTFontCopyTable(fontRef, kCTFontTableSbix, kCTFontTableOptionNoOptions);
    size_t srcSize = CFDataGetLength(dataRef);
    encodedFont = (__bridge_transfer NSData *)dataRef;
    char *buffer = malloc(encodedFont.length);
    NSUInteger length = encodedFont.length;
    memcpy(buffer, CFDataGetBytePtr(dataRef), length);
    void *bufferPo = (void *)CFDataGetBytePtr(dataRef);
    char *bufferChar = (char *)CFDataGetBytePtr(dataRef);
    char *bufferStr = "ancdfg";
    char *bufferStr2 = malloc(6);
    memcpy(bufferStr2, bufferStr2, 5);
//    UInt8 *ptr =CFDataGetBytePtr(dataRef);
//    NSLog(@"chengjian_test testFont encodedFont.size=%zu CFDataGetBytePtr=%p,CFDataGetBytePtr=%s,CFDataGetBytePtr=%d,bufferChar=%s,bufferStr=%s", srcSize, CFDataGetBytePtr(dataRef), CFDataGetBytePtr(dataRef)[0], CFDataGetBytePtr(dataRef),bufferChar,bufferStr);
//    free(bufferStr);
//    free(bufferPo);
    UIButton *testMemoryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testMemoryButton.frame = CGRectMake(1, 200, 100, 100);
    [testMemoryButton setTitle:@"😀dsdsdds" forState:UIControlStateNormal];
    [self.view addSubview:testMemoryButton];
    [[MeemoDanmuWindowManager sharedInstance] show];
    [[MeemoFloatEntryWindowManager sharedInstance] show];

//    for (NSString *fontfamilyname in [UIFont familyNames]) {
//        NSLog(@"chengjian_test family:'%@'", fontfamilyname);
//        for (NSString *fontName in [UIFont fontNamesForFamilyName:fontfamilyname]) {
//            NSLog(@"chengjian_test \tfont:'%@'", fontName);
//        }
//        NSLog(@"chengjian_test -------------");
//    }
//    NSString *string = @"👨‍❤️‍💋‍👨";
//    NSLog(@"%lu", string.length);
//    TestStaticFramework *dd= [[TestStaticFramework alloc] init];
//    [dd testMethodCrash];
}

- (void)startThread {
//    TestMRC *mrc = [[TestMRC alloc] init];
    pthread_t thread;
    NSLog(@"dddd =%f",  [UIApplication sharedApplication].windows.firstObject.safeAreaInsets.bottom);
//    [[MeemoFloatEntryWindowManager sharedInstance] show];
//    [[MeemoNetworkManager sharedInstance] initEnv:0];
//    [[MeemoNetworkManager sharedInstance] post:@"/live/streamer/info" param:nil success:nil failure:nil];
//    NSString *testa = @"abcd";
//    NSDictionary *dic = @{ @"dd": @"abcd", @"self": self, @"num": @1 };
//    NSLog(@"chengjian_test_22 =%d", [testa isEqualToString:dic[@"ss"]]);
//    NSLog(@"chengjian_test_22 =%d", [testa isEqualToString:dic[@"dd"]]);
//    NSLog(@"chengjian_test_22 =%d", dic[@"ss"] == nil);
//    NSString *aa = dic[@"ss"];
//    NSLog(@"chengjian_test_22 =%lu", (unsigned long)aa.length);
//    NSString *bb = [aa stringByAppendingString:@"dd"];
//    NSLog(@"chengjian_test_22 1=%d", [bb intValue]);
//    NSDictionary *dic11 = dic[@"ss"];
//    NSDictionary *dic22 = dic[@"dd"];
//    NSString *aaaa = self;
////    int bbbb = [aaaa intValue];
////    NSLog(@"chengjian_test_22 2=%d", dic[@"num"]);
////    NSLog(@"chengjian_test_33 2=%@,%@,%d", dic11[@"aa"], dic22[@"aa"], [aaaa intValue]);
//
//    if ([dic[@"status"] isEqual:nil]) {
//        NSLog(@"chengjian_test_22 2=%d", dic[@"num"]);
//    }
//
//    if ([dic[@"num"] isEqual:@1]) {
//        NSLog(@"chengjian_test_22 2=%d", dic[@"num"]);
//    }
//    [[MeemoDanmuWindowManager sharedInstance] close];
    //创建一个线程并自动执行
    int id = pthread_create(&thread, NULL, runtest, (void *)@"this is thread");
//    int id = pthread_create(&thread, NULL, runtest, NULL);
//    pthread_detach(thread);
//    NSLog(@"chengjian run dsfdsfdsfdsfsafasfasfdsfdsfdsfasdfdasfdfsdfdfjhdshfdsfjhdsakfgkfgdskfgdsjgfks thread =%d", id);
}

void * runtest(void *param)    // 新线程调用方法，里边为需要执行的任务
{
    NSLog(@"chengjian_test 子线程 runtest");
//    NSLog(@"chengjian run param sgfsjfgjdsgfjkdsgfjdsgfjdsagfkjdasgfkjdsgafkdgaskjfgdskfgkdsgfjdgsfkjdsgfgfsskgfkasgfgdkfgds=%s thread=%@", param, [NSThread currentThread]);
//    sleep(10000);
//    NSLog(@"dddd =%f",  [UIApplication sharedApplication].windows.firstObject.safeAreaInsets.bottom);
    NSString *aa = @"ddd";
    dispatch_async(dispatch_get_main_queue(), ^{
//        aa=@"dddd";
        NSLog(@"chengjian_test aa==%@", aa);
    });
    return NULL;
}

//-(IBAction)clickButton:(UIButton *)button{
//    NSLog(@"%@",button);
//    button.enabled = NO;
//}

- (void)produceAction {
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
            NSLog(@"生产了一个产品,当前个数是：%ld", array.count);
            //唤醒消费者(all)所有的
            [condition broadcast];
        }
        //可以打印出异常是什么原因！
        @catch (NSException *exception) {
        } @finally {
            //解锁
            [condition unlock];
        }
    }
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"chengjian TestViewController viewWillAppear");
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"chengjian TestViewController viewDidDisappear");
}
- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"chengjian TestViewController viewWillDisappear");
}
- (void)consumerAction {
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
            NSLog(@"消费了一个产品,当前个数是：%ld", array.count);
            //唤醒生产者(all)所有的
            [condition broadcast];
        } @catch (NSException *exception) {
        } @finally {
            //解锁
            [condition unlock];
        }
    }
}
- (void)dealloc
{
//    [super dealloc];
}
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
@end

//
//  AppDelegate.m
//  TestBase
//
//  Created by chengjian on 2019/5/24.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import "AppDelegate.h"
#import "TestViewController.h"
#import "UITableviewVC.h"
#import "DSSafeFree.h"
//#import <libOOMDetector.h>
#import <Rqd/CrashReporter.h>
#define USE_VM_LOGGER

#ifdef USE_VM_LOGGER
typedef void (malloc_logger_t)(uint32_t type, uintptr_t arg1, uintptr_t arg2, uintptr_t arg3, uintptr_t result, uint32_t num_hot_frames_to_skip);

extern malloc_logger_t* __syscall_logger;
#endif

static void oom_log_callback(char *info)
{
    NSLog(@"%s",info);
}


NSString *const kChunkMallocNoti = @"kChunkMallocNoti";
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    init_safe_free();
//    [[NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
//    [[[NSBundle alloc] initWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
    // Override point for customization after application launch.
    NSLog(@"application initWithPath 当前栈信息1111：%@", [NSThread callStackSymbols]);
//    [self redirectConsoleLog];
//    UITableviewVC *vc = [[UITableviewVC alloc] init];
    TestViewController *vc = [[TestViewController alloc] init];
    UINavigationController *navgationController = [[UINavigationController alloc]initWithRootViewController:vc];
//    self.navgationController = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window.rootViewController = navgationController;
    NSLog(@"chengjian_socket_send applicationDidBecomeActive");

//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        self.secondWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//        TestWebviewVCViewController *secondVC = [[TestWebviewVCViewController alloc] init];
//        self.secondWindow.rootViewController = secondVC;
//        self.secondWindow.backgroundColor = [UIColor orangeColor];
//        [self.secondWindow makeKeyAndVisible];
//        NSLog(@"chengjian_tst root2:%@", secondVC);
//
//        NSLog(@"chengjian_tst keyW:%@", [UIApplication sharedApplication].keyWindow);
//        NSLog(@"chengjian_tst windows:count:%ld,具体0：%@ level=%f", [UIApplication sharedApplication].windows.count, [UIApplication sharedApplication].windows[0], [UIApplication sharedApplication].windows[0].windowLevel);
//        NSLog(@"chengjian_tst windows:count:%ld,具体1：%@  level=%f", [UIApplication sharedApplication].windows.count, [UIApplication sharedApplication].windows[1].windowLevel);
//        NSLog(@"chengjian_tst %@-----%@", [[[UIApplication sharedApplication] delegate] window], [UIApplication sharedApplication].windows[0].rootViewController);
//    });
//    UIWindow *window = [UIApplication sharedApplication].delegate.window;
//    [[CrashReporter sharedInstance] setUserId:@"2004"];
//    [[CrashReporter sharedInstance] startBlockMonitor];//非后台启动了，自动再开启卡顿上报.
//    [[OOMDetector getInstance] registerLogCallback:oom_log_callback];
//    [self setupFOOMMonitor];
//    [self setupOOMDetector];
    return YES;
}

- (void)redirectConsoleLog {
#ifdef DEBUG
    NSString *documentDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSLog(@"documentPath : %@", documentDir);

    //重定向NSLog
    NSString *logPath = [documentDir stringByAppendingPathComponent:@"console.log"];
    freopen([logPath fileSystemRepresentation], "a+", stderr);
#endif
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"chengjian_socket_send applicationDidBecomeActive");
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

// 当应用程序入活动状态执行，这个刚好跟上面那个方法相反
- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"chengjian_socket_send applicationDidBecomeActive");
}

//当程序被推送到后台的时候调用。所以要设置后台继续运行，则在这个函数里面设置即可
- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"chengjian_socket_send applicationDidEnterBackground");
//    [[FOOMMonitor getInstance] appDidEnterBackground];
}

//当程序从后台将要重新回到前台时候调用，这个刚好跟上面的那个方法相反。
- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"chengjian_socket_send applicationWillEnterForeground");
//    [[FOOMMonitor getInstance] appWillEnterForground];
}

//当程序将要退出是被调用，通常是用来保存数据和一些退出前的清理工作。这个需要要设置UIApplicationExitsOnSuspend的键值。
- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"chengjian_socket_send applicationWillTerminate");
//    [[FOOMMonitor getInstance] appWillTerminate];
}

//当程序载入后执行
- (void)applicationDidFinishLaunching:(UIApplication *)application {
    NSLog(@"chengjian_socket_send applicationDidFinishLaunching");
}


- (void)applicationDidCrashed
{
    //crash 捕获组件的回调
//    [[FOOMMonitor getInstance] appDidCrashed];
}

- (void)applicationDetectedDeadlock
{
    //检测到死锁，可以使用blue组件捕获
    //[[QQBlueFrameMonitor getInstance] startDeadLockMonitor:^(double cost, NSArray *stacks) {
//    [[FOOMMonitor getInstance] appDetectDeadLock:stacks];
//}];
//    [[FOOMMonitor getInstance] appDetectDeadLock:nil];
}

- (void)applicationResumeFromDeadlock
{
    //从死锁恢复
//    [[FOOMMonitor getInstance] appResumeFromDeadLock];
}


- (void)setupFOOMMonitor
{
//    [[FOOMMonitor getInstance] setAppVersion:@"OOMDetector_demo"];
//    //设置爆内存监控，爆内存监控用于监控App前台爆内存和卡死，这个可以全量开启
//    [[FOOMMonitor getInstance] start];
}

- (void)setupOOMDetector
{
//    OOMDetector *detector = [OOMDetector getInstance];
//    [detector setupWithDefaultConfig];
    
    
/*********************下面的几项可以根据自己的实际需要选择性设置******************/
    
    // 设置捕获堆栈数据、内存log代理，在出现单次大块内存分配、检查到内存泄漏且时、调用uploadAllStack方法时会触发此回调
//    [detector setFileDataDelegate:[MyOOMDataManager getInstance]];
////
////    // 设置app内存触顶监控数据代理，在调用startMaxMemoryStatistic:开启内存触顶监控后会触发此回调，返回前一次app运行时单次生命周期内的最大物理内存数据
//    [detector setPerformanceDataDelegate:[MyOOMDataManager getInstance]];
//
//    // 单次大块内存分配监控
//    [detector startSingleChunkMallocDetector:50 * 1024 * 1024 callback:^(size_t bytes, NSString *stack) {
//        [[NSNotificationCenter defaultCenter] postNotificationName:kChunkMallocNoti object:stack];
//    }];

    // 开启内存泄漏监控，目前只可检测真机运行时的内存泄漏，模拟器暂不支持,这个功能占用的内存较大，建议只在测试阶段使用
 //   [detector setupLeakChecker];

    // 开启MallocStackMonitor用以监控通过malloc方式分配的内存,会增加8%左右的cpu开销和10Mb内存,所以建议抽样开启
//    [detector startMallocStackMonitor:30 * 1024 * 1024 logUUID:[[FOOMMonitor getInstance] getLogUUID]];
    //30K以下堆栈按10%抽样监控
//    OOMDetector *oomdetector = [OOMDetector getInstance];
//    [oomdetector setMallocSampleFactor:10];
//    [oomdetector setMallocNoSampleThreshold:30*1024];
    // 开启VMStackMonitor用以监控非直接通过malloc方式分配的内存
    // 因为startVMStackMonitor:方法用到了私有API __syscall_logger会带来app store审核不通过的风险，此方法默认只在DEBUG模式下生效，如果
    // 需要在RELEASE模式下也可用，请打开USE_VM_LOGGER_FORCEDLY宏，但是切记在提交appstore前将此宏关闭，否则可能会审核不通过
//    [detector setVMLogger:(void**)&__syscall_logger];
//    [detector startVMStackMonitor:30 * 1024 * 1024 logUUID:[[FOOMMonitor getInstance] getLogUUID]];

 /*************************************************************************/
    
}

@end

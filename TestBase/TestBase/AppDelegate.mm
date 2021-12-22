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
//#import <Rqd/CrashReporter.h>
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
}

//当程序从后台将要重新回到前台时候调用，这个刚好跟上面的那个方法相反。
- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"chengjian_socket_send applicationWillEnterForeground");
}

//当程序将要退出是被调用，通常是用来保存数据和一些退出前的清理工作。这个需要要设置UIApplicationExitsOnSuspend的键值。
- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"chengjian_socket_send applicationWillTerminate");
}

//当程序载入后执行
- (void)applicationDidFinishLaunching:(UIApplication *)application {
    NSLog(@"chengjian_socket_send applicationDidFinishLaunching");
}

@end

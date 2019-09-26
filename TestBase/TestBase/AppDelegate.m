//
//  AppDelegate.m
//  TestBase
//
//  Created by chengjian on 2019/5/24.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [[NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
//    [[[NSBundle alloc] initWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
    // Override point for customization after application launch.
    NSLog(@"application initWithPath 当前栈信息1111：%@", [NSThread callStackSymbols]);
//    [self redirectConsoleLog];
//    ViewController *vc = [[ViewController alloc] init];
//    UINavigationController *navgationController = [[UINavigationController alloc]initWithRootViewController:vc];
//    //    self.navgationController = [[UINavigationController alloc]initWithRootViewController:vc];
//    self.window.rootViewController = navgationController;
    return YES;
}

-(void)redirectConsoleLog{
#ifdef DEBUG
    NSString *documentDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSLog(@"documentPath : %@",documentDir);
    
    //重定向NSLog
    NSString* logPath = [documentDir stringByAppendingPathComponent:@"console.log"];
    freopen([logPath fileSystemRepresentation], "a+", stderr);
#endif
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


// 当应用程序入活动状态执行，这个刚好跟上面那个方法相反
- (void)applicationDidBecomeActive:(UIApplication *)application{
    NSLog(@"chengjian_socket_send applicationDidBecomeActive");
    
}
//当程序被推送到后台的时候调用。所以要设置后台继续运行，则在这个函数里面设置即可
- (void)applicationDidEnterBackground:(UIApplication *)application{
     NSLog(@"chengjian_socket_send applicationDidEnterBackground");
}

//当程序从后台将要重新回到前台时候调用，这个刚好跟上面的那个方法相反。
- (void)applicationWillEnterForeground:(UIApplication *)application{
    NSLog(@"chengjian_socket_send applicationWillEnterForeground");
}
//当程序将要退出是被调用，通常是用来保存数据和一些退出前的清理工作。这个需要要设置UIApplicationExitsOnSuspend的键值。
- (void)applicationWillTerminate:(UIApplication *)application{
    NSLog(@"chengjian_socket_send applicationWillTerminate");
}
//当程序载入后执行
- (void)applicationDidFinishLaunching:(UIApplication*)application{
    NSLog(@"chengjian_socket_send applicationDidFinishLaunching");
}


@end

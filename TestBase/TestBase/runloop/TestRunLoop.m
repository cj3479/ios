//
//  TestRunLoop.m
//  TestBase
//
//  Created by chengjian on 2019/8/30.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestRunLoop.h"
#import "ViewController.h"
#import "MyWorker.h"
#import <UIKit/UIApplication.h>
/// <#Description#>
@implementation TestRunLoop
{
//    CFRunLoopObserverRef observer;
    BOOL end;
}
+ (NSThread *)networkRequestThread {
    NSLog(@"runloop networkRequestThread …");
    static NSThread *_networkRequestThread = nil;
    static NSRunLoop *runLoop = nil;
    static dispatch_once_t oncePredicate;
    static NSPort *port;
    dispatch_once(&oncePredicate, ^{
        NSLog(@"runloop dispatch_once …");
        _networkRequestThread = [[NSThread alloc] initWithTarget:self selector:@selector(networkRequestThreadEntryPoint:) object:nil];
        [_networkRequestThread start];
    });
    dispatch_queue_t queue = dispatch_queue_create("testss", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        NSLog(@"runloop dispatch_async start …");
         runLoop = [NSRunLoop currentRunLoop];
         port = [NSMachPort port];
//         [runLoop addPort:port forMode:NSDefaultRunLoopMode];
        // 注意：这里repeats参数要设为`NO`.
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2 repeats:NO block:^(NSTimer * _Nonnull timer) {
            NSLog(@"timer block");
        }];
        // 添加一个定时源
        [runLoop addTimer:timer forMode:NSDefaultRunLoopMode];
//        [runLoop removePort:port forMode:NSDefaultRunLoopMode];
//        NSLog(@"runloop dispatch_async  …port:%@,runLoop:%p",port,runLoop);
//        [runLoop run];
//        NSLog(@"runloop dispatch_async end …runLoop:%@",runLoop);
    });
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [runLoop removePort:port forMode:NSDefaultRunLoopMode];
////        [runLoop run];
//        NSLog(@"runloop dispatch_after end …port:%@,runLoop:%p",port,runLoop);
//    });
    return _networkRequestThread;
}

+ (void)networkRequestThreadEntryPoint:(id)__unused object {
//    @autoreleasepool {
    NSLog(@"runloop networkRequestThreadEntryPoint start …");
    sleep(3);
//    [[NSThread currentThread] setName:@"AFNetworking111"];
//
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    NSPort *port = [NSMachPort port];
    NSLog(@"runloop networkRequestThreadEntryPoint  …port:%@",port);
    [runLoop addPort:port forMode:NSDefaultRunLoopMode];
//    NSLog(@"runloop networkRequestThreadEntryPoint ing ……runLoop:%@",runLoop);
    NSLog(@"runloop networkRequestThreadEntryPoint start 22…");
    [runLoop run];
    NSLog(@"runloop networkRequestThreadEntryPoint end …");
//    }
}

-(void)testPort{
    CFRunLoopObserverRef observer = CFRunLoopObserverCreateWithHandler(CFAllocatorGetDefault(), kCFRunLoopAllActivities, YES, 0, ^(CFRunLoopObserverRef observer11, CFRunLoopActivity activity) {
        switch (activity) {
            case kCFRunLoopEntry:
                NSLog(@"RunLoop进入");
                break;
            case kCFRunLoopBeforeTimers:
                NSLog(@"RunLoop要处理Timers了");
                break;
            case kCFRunLoopBeforeSources:
                NSLog(@"RunLoop要处理Sources了");
                break;
            case kCFRunLoopBeforeWaiting:
                NSLog(@"RunLoop要休息了");
                break;
            case kCFRunLoopAfterWaiting:
                NSLog(@"RunLoop醒来了");
                break;
            case kCFRunLoopExit:
                NSLog(@"RunLoop退出了");
                break;
                
            default:
                break;
        }
        NSLog(@"currentRunLoop= %@", [NSRunLoop currentRunLoop].currentMode);
    });
    
    // 给RunLoop添加监听者
    /*
     第一个参数 CFRunLoopRef rl：要监听哪个RunLoop,这里监听的是主线程的RunLoop
     第二个参数 CFRunLoopObserverRef observer 监听者
     第三个参数 CFStringRef mode 要监听RunLoop在哪种运行模式下的状态
     */
    CFRunLoopAddObserver(CFRunLoopGetCurrent(), observer, kCFRunLoopCommonModes);
    NSPort* myPort = [NSMachPort port];
    if (myPort){
        //这个类持有即将到来的端口消息
        [myPort setDelegate:self];
        //将端口作为输入源安装到当前的 runLoop
        [[NSRunLoop currentRunLoop] addPort:myPort forMode:NSDefaultRunLoopMode];
        //当前线程去调起工作线程
        [NSThread detachNewThreadSelector:@selector(LaunchThreadWithPort:)
        toTarget:[MyWorker class] withObject:myPort];
    }
}

- (void)handlePortMessage:(NSMessagePort*)message{
    NSLog(@"runloop 接到子线程传递的消息！%@",message);
    //1. 消息id
    NSUInteger msgId = [[message valueForKeyPath:@"msgid"] integerValue];

    //2. 当前主线程的port
    NSPort *localPort = [message valueForKeyPath:@"localPort"];

    //3. 接收到消息的port（来自其他线程）
    NSPort *remotePort = [message valueForKeyPath:@"remotePort"];
    NSLog(@"runloop handlePortMessage msgId=%lu,localPort=%@,remotePort=%@,localPort.desc=%@,remotePort.desc=%@....\n",(unsigned long)msgId,localPort,remotePort,localPort.description,remotePort.description);
    if (msgId == kMsg1)
    {
        //向子线的port发送消息
        [remotePort sendBeforeDate:[NSDate date]
                             msgid:kMsg2
                        components:nil
                              from:localPort
                          reserved:0];
         NSLog(@"runloop handlePortMessage sendBeforeDate end");

    } else if (msgId == kMsg2){
        NSLog(@"runloop 操作2....\n");
    }
}
    
- (void)testBlock {
    
    //创建监听者
    /*
     第一个参数 CFAllocatorRef allocator：分配存储空间 CFAllocatorGetDefault()默认分配
     第二个参数 CFOptionFlags activities：要监听的状态 kCFRunLoopAllActivities 监听所有状态
     第三个参数 Boolean repeats：YES:持续监听 NO:不持续
     第四个参数 CFIndex order：优先级，一般填0即可
     第五个参数 ：回调 两个参数observer:监听者 activity:监听的事件
     */
    /*
     所有事件
     typedef CF_OPTIONS(CFOptionFlags, CFRunLoopActivity) {
     kCFRunLoopEntry = (1UL << 0),   //   即将进入RunLoop
     kCFRunLoopBeforeTimers = (1UL << 1), // 即将处理Timer
     kCFRunLoopBeforeSources = (1UL << 2), // 即将处理Source
     kCFRunLoopBeforeWaiting = (1UL << 5), //即将进入休眠
     kCFRunLoopAfterWaiting = (1UL << 6),// 刚从休眠中唤醒
     kCFRunLoopExit = (1UL << 7),// 即将退出RunLoop
     kCFRunLoopAllActivities = 0x0FFFFFFFU
     };
     */
    CFRunLoopObserverRef observer = CFRunLoopObserverCreateWithHandler(CFAllocatorGetDefault(), kCFRunLoopAllActivities, YES, 0, ^(CFRunLoopObserverRef observer11, CFRunLoopActivity activity) {
        switch (activity) {
            case kCFRunLoopEntry:
                NSLog(@"RunLoop进入");
                break;
            case kCFRunLoopBeforeTimers:
                NSLog(@"RunLoop要处理Timers了");
                break;
            case kCFRunLoopBeforeSources:
                NSLog(@"RunLoop要处理Sources了");
                break;
            case kCFRunLoopBeforeWaiting:
                NSLog(@"RunLoop要休息了");
                break;
            case kCFRunLoopAfterWaiting:
                NSLog(@"RunLoop醒来了");
                break;
            case kCFRunLoopExit:
                NSLog(@"RunLoop退出了");
                break;
                
            default:
                break;
        }
        NSLog(@"currentRunLoop= %@", [NSRunLoop currentRunLoop].currentMode);
    });
    
    // 给RunLoop添加监听者
    /*
     第一个参数 CFRunLoopRef rl：要监听哪个RunLoop,这里监听的是主线程的RunLoop
     第二个参数 CFRunLoopObserverRef observer 监听者
     第三个参数 CFStringRef mode 要监听RunLoop在哪种运行模式下的状态
     */
    CFRunLoopAddObserver(CFRunLoopGetCurrent(), observer, kCFRunLoopCommonModes);
    NSLog(@"runloop start new thread …");
//    [self.class networkRequestThread];
//    [self.class networkRequestThread];
//    [NSThread detachNewThreadSelector:@selector(runOnNewThread) toTarget:self withObject:nil];
//    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:3]];
//    [[NSRunLoop currentRunLoop] addTimer:timer forMode:UITrackingRunLoopMode];
//    [[NSRunLoop currentRunLoop] runMode:UITrackingRunLoopMode beforeDate: [NSDate dateWithTimeIntervalSinceNow:6]];
//    [[NSRunLoop currentRunLoop] runMode:UIInitializationRunLoopMode beforeDate: [NSDate dateWithTimeIntervalSinceNow:10]];
    // 新建NSTimer对象
    NSTimer *timer = [NSTimer timerWithTimeInterval:5.0 target:self selector:@selector(show) userInfo:nil repeats:YES];
//     将NSTimer添加到RunLoop中,并且告诉系统,当前Tiemr只有在RunLoop的默认模式下才有效
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
//    [self performSelector:@selector(setEnd) withObject:nil afterDelay:1];
//    [self performSelector:@selector(setEnd) onThread:[self.class networkRequestThread] withObject:nil waitUntilDone:NO];
//    [self performSelector:@selector(setEnd) onThread:[self.class networkRequestThread] withObject:nil waitUntilDone:NO];
//    [self performSelector:@selector(setEnd) onThread:[self.class networkRequestThread] withObject:nil waitUntilDone:NO];
    [self performSelector:@selector(setEnd) onThread:[self.class networkRequestThread] withObject:nil waitUntilDone:NO];
    [[NSRunLoop currentRunLoop] runMode:UITrackingRunLoopMode beforeDate: [NSDate dateWithTimeIntervalSinceNow:100]];
    // 所以在UITrackingRunLoopMode模式下，定时器的方法不会执行，但定时器仍计时
//    while (true) {
////        sleep(1);
//        NSLog(@"runloop…");
//
////        BOOL result =[[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate dateWithTimeIntervalSinceNow:100]];
////        NSLog(@"runloop end. %@", result ? @"YES" : @"NO");
//    }
    NSLog(@"runloop ok.");
}

//[[NSRunLoop mainRunLoop] run];//主线程永远等待，但让出主线程时间片
//
//[[NSRunLoopmainRunLoop]runUntilDate:[NSDatedistantFuture]];//等同上面调用
//
//[[NSRunLoopmainRunLoop]runUntilDate:[NSDatedate]];//立即返回
//
//[[NSRunLoop mainRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:10.0]];//主线程等待，但让出主线程时间片，然后过10秒后返回
//
//[[NSRunLoop mainRunLoop] runMode:NSDefaultRunLoopMode beforeDate: [NSDate distantFuture]];//主线程等待，但让出主线程时间片；有事件到达就返回，比如点击UI等。
//
//[[NSRunLoopmainRunLoop]runMode:NSDefaultRunLoopModebeforeDate: [NSDatedate]];//立即返回
//
//[[NSRunLoop mainRunLoop] runMode:NSDefaultRunLoopMode beforeDate: [NSDate dateWithTimeIntervalSinceNow:10.0]];//主线程等待，但让出主线程时间片；有事件到达就返回，如果没有则过10秒返回。
- (void)runOnNewThread {
    NSLog(@"runloop run for new thread …");
    sleep(2);
//    end=YES;
//    self performSelector:<#(nonnull SEL)#> withObject:<#(nullable id)#> afterDelay:<#(NSTimeInterval)#> inModes:<#(nonnull NSArray<NSRunLoopMode> *)#>
//    self performSelector:<#(nonnull SEL)#> withObject:<#(nullable id)#> afterDelay:<#(NSTimeInterval)#>
//    [self performSelectorOnMainThread:@selector(setEnd) withObject:nil waitUntilDone:NO];
//    [self performSelector:@selector(setEnd) withObject:nil withObject:nil];
    NSLog(@"runloop run for new thread 11111");
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"runloop setEnd. start");
        [self setEnd];
    });
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self setEnd];
//    });
    NSLog(@"runloop runOnNewThread end.");
}

- (void)setEnd {
//    [self setEnd];
    NSLog(@"runloop setEnd. mode %@",[NSRunLoop currentRunLoop].currentMode);
//    [self performSelectorOnMainThread:@selector(actionTest) withObject:nil waitUntilDone:NO modes:@[UITrackingRunLoopMode]];
    [self performSelectorOnMainThread:@selector(actionTest) withObject:nil waitUntilDone:NO modes:@[NSDefaultRunLoopMode]];
//    [self performSelectorOnMainThread:@selector(actionTest) withObject:nil waitUntilDone:NO];
//    [self performSelector:@selector(actionTest) withObject:nil afterDelay:1 inModes:@[NSDefaultRunLoopMode]];
//    sleep(5);
//    ViewController *object = [[ViewController alloc]init];
//    [self performSelector:@selector(setEnd:) withObject:object afterDelay:2];
//    [self performSelector:@selector(setEnd:) withObject:object];
//    NSLog(@"runloop setEnd. mode %@",[NSRunLoop currentRunLoop].currentMode);
    end = YES;
//    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
//    CFRunLoopStop(CFRunLoopGetCurrent());
//    [self performSelector:@selector(setEnd) onThread:[self.class networkRequestThread] withObject:nil waitUntilDone:YES];
}

- (void)actionTest{
    NSLog(@"runloop actionTest. mode %@",[NSRunLoop currentRunLoop].currentMode);
//    sleep(1);
}

- (void)setEnd:(ViewController *)object {
//    NSLog(@"runloop setEnd.object end mode %@",[NSRunLoop currentRunLoop].currentMode);
//    [self performSelector:@selector(setEnd) withObject:nil afterDelay:1];
//    ViewController *object1 = [[ViewController alloc]init];
//    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(setEnd:) object:object];
//    sleep(5);
//    [self performSelector:@selector(setEnd) withObject:nil afterDelay:1];
    end = YES;
}
- (void)show {
    NSLog(@"runloop show start");
//    [NSThread sleepForTimeInterval:5];
    NSLog(@"runloop show end");
}
@end

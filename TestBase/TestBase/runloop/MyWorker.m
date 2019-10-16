//
//  MyWorker.m
//  TestBase
//
//  Created by chengjian on 2019/9/25.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "MyWorker.h"

@implementation MyWorker
//根据端口信息启动线程
+ (void)LaunchThreadWithPort:(id)inData
{
    //设置当前线程和主线程的通信端口
    NSPort *distantPort = (NSPort *)inData;
    //获取当前的工作类
    MyWorker *workerObj = [[self alloc] init];
    //发送签到消息
    [workerObj sendCheckinMessage:distantPort];
    //释放
//    //让 runloop 处理事务
//    do {
//        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode
//                                 beforeDate:[NSDate distantFuture]];
//    } while (![workerObj shouldExit]);
//    [workerObj release];
//    [pool release];
}

//工作线程签到方法
 - (void)sendCheckinMessage:(NSPort*)outPort
{
//    @autoreleasepool {

            //1. 保存主线程传入的port
            remotePort = outPort;

            //2. 设置子线程名字
            [[NSThread currentThread] setName:@"MyWorkerClassThread"];
//            //3. 开启runloop
//            [[NSRunLoop currentRunLoop] run];
            NSLog(@"runloop MyWorker run after outPort=%@,outPort.desc=%@",outPort,outPort.description);
            //4. 创建自己port
            myPort = [NSPort port];

            //5.
            myPort.delegate = self;

            //6. 将自己的port添加到runloop
            //作用1、防止runloop执行完毕之后推出
            //作用2、接收主线程发送过来的port消息
            [[NSRunLoop currentRunLoop] addPort:myPort forMode:NSDefaultRunLoopMode];
            NSLog(@"runloop MyWorker sendPortMessage ");
            //7. 完成向主线程port发送消息
            [self sendPortMessage];
            [[NSRunLoop currentRunLoop] run];

//        }
}

/**
 *   完成向主线程发送port消息
 */
- (void)sendPortMessage {
//  [self performSelector:@selector(sendCheckinMessage:) onThread:NSThread.currentThread withObject:nil waitUntilDone:NO modes:@[NSDefaultRunLoopMode]];
//  [self performSelector:@selector(actionTest) withObject:nil afterDelay:1 inModes:@[NSDefaultRunLoopMode]];
    NSMutableArray *array  =[[NSMutableArray alloc]initWithArray:@[@"1",@"2"]];
    //发送消息到主线程，操作1
    [remotePort sendBeforeDate:[NSDate date]
                         msgid:kMsg1
                    components:array
                          from:myPort
                      reserved:0];

    //发送消息到主线程，操作2
    //    [remotePort sendBeforeDate:[NSDate date]
    //                         msgid:kMsg2
    //                    components:nil
    //                          from:myPort
    //                      reserved:0];
}

/**
 *  接收到主线程port消息
 */
- (void)handlePortMessage:(NSPortMessage *)message
{
    NSLog(@"runloop MyWorker接收到父线程的消息...\n");

    //    unsigned int msgid = [message msgid];
    //    NSPort* distantPort = nil;
    //
    //    if (msgid == kCheckinMessage)
    //    {
    //        distantPort = [message sendPort];
    //
    //    }
    //    else if(msgid == kExitMessage)
    //    {
    //        CFRunLoopStop((__bridge CFRunLoopRef)[NSRunLoop currentRunLoop]);
    //    }
}

@end

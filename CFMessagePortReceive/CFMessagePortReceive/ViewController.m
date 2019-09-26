//
//  ViewController.m
//  CFMessagePortReceive
//
//  Created by chengjian on 2019/9/25.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVAudioSession.h>
#import <AVFoundation/AVAudioPlayer.h>
#define LOCAL_MACH_PORT_NAME "com.wangzz.demo"
@interface ViewController ()
{
    CFMessagePortRef mMsgPortListenner;
     NSPort *myPort;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(0, 100, 100, 100);
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(startListenning:)];
    [btn setTitle:@"receive" forState:UIControlStateNormal];
    [btn setTitle:@"received" forState:UIControlStateHighlighted];
    [btn addGestureRecognizer:tapGesture];
    self.view.backgroundColor = UIColor.blueColor;
    [self.view addSubview:btn];

    UIButton *endbtn = [[UIButton alloc]init];
    endbtn.frame = CGRectMake(0, 300, 100, 100);
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(endLisenning:)];
    [endbtn setTitle:@"end" forState:UIControlStateNormal];
    [endbtn setTitle:@"ended" forState:UIControlStateHighlighted];
    [endbtn addGestureRecognizer:tapGesture1];
    [self.view addSubview:endbtn];
    [self playMusic];
    NSLog(@"start viewDidLoad");
    // Do any additional setup after loading the view.
}

- (void)playMusic
{
    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setActive:YES error:nil];
    [session setCategory:AVAudioSessionCategoryPlayback error:nil];

    NSString *musicPath = [[NSBundle mainBundle] pathForResource:@"backgrounmusic" ofType:@"mp3"];
    NSURL *url = [[NSURL alloc] initFileURLWithPath:musicPath];

    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    self.myBackMusic = player;

    [_myBackMusic prepareToPlay];
    [_myBackMusic setVolume:1];
    _myBackMusic.numberOfLoops = -1; //设置音乐播放次数  -1为一直循环
    [_myBackMusic play];
    NSLog(@"start playMusic");
}

- (void)startListenning:(UITapGestureRecognizer *)tap {
    dispatch_queue_t queue = dispatch_queue_create("testss", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
        if (0 != mMsgPortListenner && CFMessagePortIsValid(mMsgPortListenner)) {
            CFMessagePortInvalidate(mMsgPortListenner);
        }
        mMsgPortListenner = CFMessagePortCreateLocal(kCFAllocatorDefault, CFSTR(LOCAL_MACH_PORT_NAME), onRecvMessageCallBack, NULL, NULL);
        CFRunLoopSourceRef source = CFMessagePortCreateRunLoopSource(kCFAllocatorDefault, mMsgPortListenner, 0);
        CFRunLoopAddSource(CFRunLoopGetCurrent(), source, kCFRunLoopCommonModes);
        NSLog(@"start listenning");
        [runLoop run];
    });
//    dispatch_queue_t queue = dispatch_queue_create("testss", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_async(queue, ^{
//        //2. 设置子线程名字
//        [[NSThread currentThread] setName:@"MyWorkerClassThread"];
//        //            //3. 开启runloop
//        //            [[NSRunLoop currentRunLoop] run];
//        //4. 创建自己port
//        myPort = [NSPort port];
//
//        //5.
//        myPort.delegate = self;
//
//        //6. 将自己的port添加到runloop
//        //作用1、防止runloop执行完毕之后推出
//        //作用2、接收主线程发送过来的port消息
//        [[NSRunLoop currentRunLoop] addPort:myPort forMode:NSDefaultRunLoopMode];
//        NSLog(@"runloop MyWorker sendPortMessage ");
//        //7. 完成向主线程port发送消息
//        //            [self sendPortMessage];
//        [[NSRunLoop currentRunLoop] run];
//    });
}

 - (void)sendCheckinMessage:(NSPort*)outPort
{
//    @autoreleasepool {

            //1. 保存主线程传入的port
//            remotePort = outPort;
//        dispatch_queue_t queue = dispatch_queue_create("testss", DISPATCH_QUEUE_CONCURRENT);
//        dispatch_async(queue, ^{
//            //2. 设置子线程名字
//            [[NSThread currentThread] setName:@"MyWorkerClassThread"];
////            //3. 开启runloop
////            [[NSRunLoop currentRunLoop] run];
//            NSLog(@"runloop MyWorker run after outPort=%@,outPort.desc=%@",outPort,outPort.description);
//            //4. 创建自己port
//            myPort = [NSPort port];
//
//            //5.
//            myPort.delegate = self;
//
//            //6. 将自己的port添加到runloop
//            //作用1、防止runloop执行完毕之后推出
//            //作用2、接收主线程发送过来的port消息
//            [[NSRunLoop currentRunLoop] addPort:myPort forMode:NSDefaultRunLoopMode];
//            NSLog(@"runloop MyWorker sendPortMessage ");
//            //7. 完成向主线程port发送消息
////            [self sendPortMessage];
//            [[NSRunLoop currentRunLoop] run];
//        });
}

                       

CFDataRef onRecvMessageCallBack(CFMessagePortRef local, SInt32 msgid, CFDataRef cfData, void *info)
{
    sleep(3);
    NSLog(@"chengjian_socket onRecvMessageCallBack is called");
    NSString *strData = nil;
    if (cfData) {
        const UInt8 *recvedMsg = CFDataGetBytePtr(cfData);
        strData = [NSString stringWithCString:(char *)recvedMsg encoding:NSUTF8StringEncoding];
        /**

         实现数据解析操作

         **/

        NSLog(@"chengjian_socket receive message:%@", strData);
    }

    //为了测试，生成返回数据
    NSString *returnString = [NSString stringWithFormat:@"i have receive:%@", strData];
    const char *cStr = [returnString UTF8String];
    NSUInteger ulen = [returnString lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
    CFDataRef sgReturn = CFDataCreate(NULL, (UInt8 *)cStr, ulen);

    return nil;
}

- (void)endLisenning:(UITapGestureRecognizer *)tap
{
    CFMessagePortInvalidate(mMsgPortListenner);
    CFRelease(mMsgPortListenner);
    NSLog(@"chengjian_socket end listenning");
}

@end

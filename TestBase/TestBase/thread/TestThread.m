//
//  TestThread.m
//  TestBase
//
//  Created by chengjian on 2019/6/19.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestThread.h"
#import <pthread.h>
@implementation TestThread
- (void)startThread {
    pthread_t thread;
    //创建一个线程并自动执行
    int id = pthread_create(&thread, NULL, start,(void *)@"this is thread");
    NSLog(@"run thread =%d",id);
    starta();
}
- (void)run {
    NSLog(@"run thread before..... =%@", [NSThread currentThread]);
    [NSThread sleepForTimeInterval:2];
    dispatch_sync(dispatch_get_main_queue(), ^{
        [[NSThread currentThread] setName:@"main queue"];
        NSLog(@"run thread dispatch main..... =%@", [NSThread currentThread]);
        NSLog(@"main thread: %d", [NSThread isMainThread]);
    });
    NSLog(@"run thread after..... =%@", [NSThread currentThread]);
}
void *start(void *data) {
    NSString *str = (__bridge NSString *)(data);
    [[NSThread currentThread] setName:str];
    NSLog(@"run thread =%@,data=%@", [NSThread currentThread],str);
    return NULL;
}

void starta() {
    NSLog(@"startastartastartastartastartastartastarta");
}
- (void) testNSThread{
  [self addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionOld context:nil];
    TestThread *testThread = [[TestThread alloc]init];
    NSThread *thread = [[NSThread alloc]initWithTarget:testThread selector:@selector(run) object:nil];
    [thread setName:@"abcd"];
    [thread start];
}
- (void)testGCD {
    dispatch_queue_t queue =
    dispatch_queue_create("test_serial_queue", DISPATCH_QUEUE_SERIAL);
    dispatch_async(queue, ^{
        [[NSThread currentThread] setName:@"dispatch_async_ser_tn"];
        NSLog(@"testGCD1=%@", [NSThread currentThread]); // 打印当前线程
    });
    //GCD延时调用(主线程)(主队列)
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"testGCD GCD main thread %@", [NSThread currentThread]);
    });
    //GCD延时调用(主线程)(主队列)
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), queue, ^{
        NSLog(@"testGCD GCD other thead %@", [NSThread currentThread]);
    });
//    [NSThread sleepForTimeInterval:1];
//    NSLog(@"testGCD2........");
//    dispatch_async(queue, ^{
//        NSLog(@"testGCD2=%@", [NSThread currentThread]); // 打印当前线程
//    });
    dispatch_queue_t cQueue = dispatch_queue_create("test_concurrent_queue", DISPATCH_QUEUE_SERIAL);
    dispatch_async(cQueue, ^{
        [NSThread sleepForTimeInterval:1];
        NSLog(@"testGCD  1 concurrent=%@", [NSThread currentThread]); // 打印当前线程
        dispatch_sync(cQueue, ^{
            [NSThread sleepForTimeInterval:1];
            NSLog(@"testGCD  1 concurrent=%@", [NSThread currentThread]); // 打印当前线程
        });
        NSLog(@"testGCD  1 enddding=%@", [NSThread currentThread]);
    });
//    dispatch_async(cQueue, ^{
//        NSLog(@"testGCD  2 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
//    [NSThread sleepForTimeInterval:1];
//    dispatch_async(cQueue, ^{
//        NSLog(@"testGCD  3 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
//    dispatch_async(cQueue, ^{
//        NSLog(@"testGCD  4 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
//    dispatch_async(cQueue, ^{
//        NSLog(@"testGCD  5 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
//    [NSThread sleepForTimeInterval:1];
//    dispatch_async(cQueue, ^{
//        [NSThread sleepForTimeInterval:1];
//        [[NSThread currentThread] setName:@"dispatch_async_concurrent 7"];
//        NSLog(@"testGCD  6 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
//    dispatch_async(cQueue, ^{
//        [NSThread sleepForTimeInterval:1];
//        [[NSThread currentThread] setName:@"dispatch_async_concurrent 7"];
//        NSLog(@"testGCD  7 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
//    dispatch_async(cQueue, ^{
//        [NSThread sleepForTimeInterval:1];
//        [[NSThread currentThread] setName:@"dispatch_async_concurrent 8"];
//        NSLog(@"testGCD  8 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
//    dispatch_async(cQueue, ^{
//        [NSThread sleepForTimeInterval:1];
//        [[NSThread currentThread] setName:@"dispatch_async_concurrent 9"];
//        NSLog(@"testGCD  9 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
//    dispatch_async(cQueue, ^{
//        [NSThread sleepForTimeInterval:1];
//        [[NSThread currentThread] setName:@"dispatch_async_concurrent 10"];
//        NSLog(@"testGCD  10 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
//    dispatch_async(cQueue, ^{
//        [NSThread sleepForTimeInterval:1];
//        [[NSThread currentThread] setName:@"dispatch_async_concurrent 11"];
//        NSLog(@"testGCD  11 concurrent=%@", [NSThread currentThread]); // 打印当前线程
//    });
    for(int i = 0; i < 10; i++){
        NSString *string =[NSString stringWithFormat:@"%@,%d", @"test_SERIAL111_queue_",i];
        dispatch_queue_t cQueue1 = dispatch_queue_create([string UTF8String], DISPATCH_QUEUE_SERIAL);
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"testGCD  cQueue%d concurrent=%@", i,[NSThread currentThread]); // 打印当前线程
        });
    }
    NSLog(@"testGCD  end......");
}
@end

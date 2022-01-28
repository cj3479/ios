//
//  TestMRC.m
//  TestBase
//
//  Created by chengjian on 2021/10/28.
//  Copyright © 2021 chengjian. All rights reserved.
//
#include <memory>
#import "TestMRC.h"
#import "TestArcTwo.h"
#import "ios_context_metal.h"
#import "unzip.h"
#import <Accelerate/Accelerate.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NSNotificationName const FlutterViewControllerWillDealloc = @"FlutterViewControllerWillDealloc";
@implementation TestMRC
{
    std::unique_ptr<IOSContextMetal> _metal;
    TestMRC *testMrc;
//    IOSContextMetal iosContextMetal;
}
- (instancetype)init
{
    self = [super init];
    NSNotificationCenter* center = [NSNotificationCenter defaultCenter];

    [center addObserver:self
               selector:@selector(applicationWillEnterForeground:)
                   name:UIApplicationWillEnterForegroundNotification
                 object:nil];

    [center addObserver:self
               selector:@selector(applicationDidEnterBackground:)
                   name:UIApplicationDidEnterBackgroundNotification
                 object:nil];
//    NSLog(@"chengjian_test TestMRC 创建 %@", [NSThread callStackSymbols]);
//    unz_global_info  globalInfo = {1000000000000011,1000000000000000111};
//    NSUInteger aa = 43434343;
//    unsigned int  bb = aa;
//    float min = 0;
//    float max = FLT_MAX;
//    vDSP_vclip(nil, 1, &min, &max, nil, 1, 100);
//    NSLog(@"chengjian_test TestMRC globalInfo=%lu bb=%lu", globalInfo.number_entry,bb);
//    uLong number_entry = 10000000000;
    return self;
}
- (void)applicationWillEnterForeground:(NSNotification*)notification {
    NSLog(@"chengjian_test applicationWillEnterForeground notification=%@",notification);
}

- (void)applicationDidEnterBackground:(NSNotification*)notification {
    NSLog(@"chengjian_test applicationDidEnterBackground notification=%@",notification);
}
- (void)testPtr {
//    TestArcTwo *testArc = [[TestArcTwo alloc] init];
//    [testArc release];
//    [testArc release];
//    self.testArcP = testArc;
//    NSLog(@"testPtr testArc.rc = %ld",RC(testArc));
    IOSContextMetal *ff = new IOSContextMetal();
//    IOSContextMetal temp;
//    NSLog(@"chengjian_test TestMRC testPtr  temp.IOSContextMetal=%p", &temp);
//    [self testPtrCopy:temp];
//    iosContextMetal = temp;
//    auto pointer = std::make_unique<IOSContextMetal>();
//    NSLog(@"chengjian_test testMrc  pointer = %p", pointer.get());
//    _metal = std::move(pointer);
//    NSLog(@"chengjian_test testMrc  _metal = %p,pointer = %p", _metal.get(), pointer.get());
//    auto pointer = std::make_shared<IOSContextMetal>();
//    auto pointer2 = pointer;    // 引用计数+1
//    auto pointer3 = pointer;    // 引用计数+1
//
////    pointer.reset();
////    pointer.reset();
////    pointer.reset();
////    pointer.reset();
//    NSLog(@"chengjian_test testMrc  use_count = %ld", pointer.use_count());
//    NSLog(@"chengjian_test testMrc  pointer = %ld,pointer2 = %ld,pointer3 = %ld", &pointer, &pointer2, &pointer3);
}

- (void)testPtrCopy:(IOSContextMetal) metal {

    NSLog(@"chengjian_test TestMRC testPtrCopy  temp.IOSContextMetal=%p", &metal);
}
+ (TestMRC *)testGetAutoReleseMrc {
    TestMRC *mrc = [[TestMRC alloc ] init];
    mrc = [mrc autorelease];
//    [mrc release];
//    [mrc release];
    return mrc;
}
+ (void)testMrc {
    IOSContextMetal *metal = new IOSContextMetal();
    metal=NULL;
    NSLog(@"chengjian_test metal=%p",metal);
//    TestMRC *mrc = [TestMRC testGetAutoReleseMrc];
//    [mrc release];
//    NSLog(@"chengjian_test click testMrc ");
//    IOSContextMetal *temp = new IOSContextMetal();
//    IOSContextMetal ff;
//    TestMRC *testRc = [[TestMRC alloc] init];
////    testRc = nil;
//    TestMRC *testRc1 = testRc;
//    TestMRC *testRc2 = testRc;
//    TestMRC *testRc3 = testRc;
//    NSLog(@"testMrc count = %ld",RC(testRc2));
//    NSLog(@"testMrc count = %ld",RC(testRc));
//    auto pointer = std::make_unique<IOSContextMetal>();

//    auto pointer = std::make_shared<IOSContextMetal>();
//    auto pointer2 = pointer;    // 引用计数+1
//    auto pointer3 = pointer;    // 引用计数+1
//
////    pointer.reset();
////    pointer.reset();
////    pointer.reset();
////    pointer.reset();
//    NSLog(@"chengjian_test testMrc  use_count = %ld", pointer.use_count());
//    NSLog(@"chengjian_test testMrc  pointer = %ld,pointer2 = %ld,pointer3 = %ld", &pointer, &pointer2, &pointer3);
//    TestMRC *mrc1 = [[TestMRC alloc]init];
    //    NSLog(@"chengjian_tes%ldtes(long)tMrc 111 adExtraDic1 111 count = %d", &ff);
//    [mrc1 release];
}

- (void)testNotification:(TestArcTwo *)testArcTwo {
    __block TestMRC *blockSelf = self;
    [self release];
    [[NSNotificationCenter defaultCenter] addObserverForName:FlutterViewControllerWillDealloc
                                                      object:testArcTwo
                                                       queue:[NSOperationQueue mainQueue]
                                                  usingBlock:^(NSNotification *note) {
                                                      [blockSelf testPtr];
        NSLog(@"chengjian_test NSNotification FlutterViewControllerWillDealloc");
                                                  }];
}

-(void)testEmpty{
    [self release];
}
//- (instancetype)retain{
//    return [super retain];
//}
- (void)dealloc
{
    NSLog(@"chengjian_test TestMRC 销毁");
//    NSLog(@"chengjian_test TestMRC 销毁 retainCount=%lu", (unsigned long)[self retainCount]);
//    NSLog(@"chengjian_test TestMRC 销毁 testArcP=%lu,testArcP=%lu", (unsigned long)[self.testArcP retainCount],RC(self.testArcP));
//    self.testArcP = nil;
//    _metal.reset();
//    _metal.release();
//    NSLog(@"chengjian_test testMrc dealloc before _metal = %p", _metal.get());
//    NSLog(@"chengjian_test testMrc dealloc before _metal = %p", _metal.get());
    [super dealloc];
//    iosContextMetal.testMsg();
//    NSLog(@"chengjian_test testMrc  after _metal = %p", _metal.get());
}
//- (instancetype)retain{
//    NSLog(@"MeemoSdk TestMRC retain:%@", [NSThread callStackSymbols]);
//    TestMRC *mrc=  [super retain];
////    NSLog(@"MeemoSdk TestMRC retain rc:%d", RC(mrc));
//    return mrc;
//}
//
//- (oneway void)release{
////    NSLog(@"MeemoSdk TestMRC before releaseetainCount=%d",[self retainCount]);
//    [super release];
////    NSLog(@"MeemoSdk TestMRC after rc:%d  retainCount=%d",[self retainCount]);
//    NSLog(@"chengjian_test TestMRC release:%@", [NSThread callStackSymbols]);
//}
//
//- (instancetype)autorelease{
//    NSLog(@"chengjian_test TestMRC autorelease:%@", [NSThread callStackSymbols]);
//    return [super autorelease];
//}
@end

//
//  TestMRC.h
//  TestBase
//
//  Created by chengjian on 2021/10/28.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#define RC(obj) CFGetRetainCount((__bridge CFTypeRef)(obj))
//NS_ASSUME_NONNULL_BEGIN
#define RC(obj) CFGetRetainCount((__bridge CFTypeRef)(obj))
extern NSNotificationName const FlutterViewControllerWillDealloc;
@class TestArcTwo;
@interface TestMRC : NSObject
@property(strong,atomic) TestArcTwo *testArcP;
+ (void)testMrc;
+ (TestMRC*)testGetAutoReleseMrc;
- (void)testPtr;
- (void)testEmpty;
- (void)testNotification:(TestArcTwo *)testArcTwo;
@end

//NS_ASSUME_NONNULL_END

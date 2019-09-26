//
//  TestLock.h
//  TestBase
//
//  Created by chengjian on 2019/9/20.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestLock : NSObject
-(void)testOSSpinLock;
-(void)testSemaphore;
-(void)testMutex;
-(void)testNSLock;
-(void)testNSCondition;
-(void)testNSRecursiveLock;
-(void)testSynchronized;
-(void)testNSConditionLock;
@end

NS_ASSUME_NONNULL_END

//
//  TestThread.h
//  TestBase
//
//  Created by chengjian on 2019/6/19.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
extern int externInt;
@interface TestThread: NSObject
- (void)startThread;
- (void)run;
- (void) testNSThread;
- (void) testGCD;
- (void)testMonitorGCD;
@end


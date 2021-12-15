//
//  TestArc.m
//  TestBase
//
//  Created by chengjian on 2021/11/28.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "TestArcTwo.h"
#import "TestMRC.h"
@implementation TestArcTwo{
    TestMRC *testMRCMember;
}

- (void)testMockArc{
//    TestMRC *testMRC = [[TestMRC alloc ] init];
    TestMRC *testMRC = [TestMRC testGetAutoReleseMrc];
//    [testMRC testNotification:self];
//    [[TestMRC testGetAutoReleseMrc] testNotification:self];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        __strong typeof(weakSelf) strongSelf = weakSelf;
//        if (nil != strongSelf) {
//            [MeemoLogUtil logDebug:@"MeemoSdk MeemoFlutterViewControll viewWillDisappear dispatch_after strongSelf.refcount=%ld strongSelf=%@", RC(strongSelf), strongSelf];
//        }
//    });
//    __weak typeof(testMRC) testMRCSelf = testMRC;
    dispatch_async(dispatch_get_main_queue(), ^{
        [testMRC testEmpty];
        [testMRC testPtr];
//        [testMRC testPtr];
//        __strong typeof(testMRCSelf) strongtestMRCSelf = testMRCSelf;
//        NSLog(@"chengjian_test dispatch_async testMRC=%@",testMRC);
    });
    
//    TestMRC *testMRCT = testMRC;
//    TestMRC *testMRCT1 = testMRCT;
//    TestMRC *testMRCT2 = testMRCT;
//    TestMRC *testMRCT3 = testMRCT;
//    self.testMrcP = testMRCT1;
//    NSLog(@"chengjian_test 1111111");
//    long rc = RC(testMRC);
//    long rc1 = RC(testMRC);
//    [testMRC testEmpty];
//    NSLog(@"chengjian_test rc=%ld,rc1=%ld",rc,rc1);
}


- (void)dealloc
{
    NSLog(@"chengjian_test TestArcTwo dealloc");
    [[NSNotificationCenter defaultCenter] postNotificationName:FlutterViewControllerWillDealloc
                                                        object:self
                                                      userInfo:nil];
//    NSLog(@"chengjian_test TestArcTwo 销毁  member.RC=%ld", RC(testMRCMember));
//    NSLog(@"chengjian_test TestArcTwo 销毁  p.RC=%ld,", RC(self.testMrcP));
//    [testMRCMember testEmpty];
//    [self.testMrcP testEmpty];
}
@end

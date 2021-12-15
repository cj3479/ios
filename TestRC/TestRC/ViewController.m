//
//  ViewController.m
//  TestRC
//
//  Created by chengjian on 2019/7/30.
//  Copyright © 2019 chengjian. All rights reserved.
//
#import "ViewController.h"
#import "TestMRC.h"
#import "TestARC.h"
#import "TestNSObject.h"
#define RC(obj) CFGetRetainCount((__bridge CFTypeRef)(obj))
__weak NSDictionary *testWeak1 = nil;
__weak NSDictionary *testWeak2 = nil;
__weak NSDictionary *testWeak3 = nil;
__weak NSDictionary *testWeak4 = nil;
extern NSString *const testConst;
@interface ViewController ()

@end

@implementation ViewController{
    NSDictionary *testDicMember;
    TestNSObject *testObjMember;
}

-(void) testVoid
{
    //    NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
    //    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
    TestMRC *mrc1  = [[TestMRC alloc]init];
//    TestARC *arc1  = [[TestARC alloc]init];
    //    [adExtraDic release];
    NSDictionary *adExtraDic1 = [mrc1 copyTest];
//    testWeak1 = adExtraDic1;
        NSLog(@"testReturnDic end testWeak1 = %p,testWeak2=%p,testWeak3=%p", testWeak1,testWeak2,testWeak3);
}

-(void) testARCVoid
{
    //    NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
    //    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
    TestMRC *mrc1  = [[TestMRC alloc]init];
    TestARC *arc1  = [[TestARC alloc]init];
    //    [adExtraDic release];
    NSDictionary *adExtraDic1 = [arc1 copyTestARCDic];
    //    testWeak1 = adExtraDic1;
    //    NSLog(@"testReturnDic end testWeak1 = %p,testWeak2=%p,testWeak3=%p", testWeak1,testWeak2,testWeak3);
}

-(NSDictionary *) testReturnDic
{
//    NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
//    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
//    TestMRC *mrc1  = [[TestMRC alloc]init];
    //    [adExtraDic release];
//    NSDictionary *adExtraDic1 = [mrc1 copyTest];
//    testWeak1 = adExtraDic1;
//    NSLog(@"testReturnDic end testWeak1 = %p,testWeak2=%p,testWeak3=%p", testWeak1,testWeak2,testWeak3);
    return  nil ;
}

__weak id reference = nil;
- (void)viewDidLoad {
    [super viewDidLoad];
//     NSString *testStr = [NSString stringWithUTF8String:object_getClassName(self)];
//    TestMRC *mrc  = [[TestMRC alloc]init];
    TestARC *arc  = [[TestARC alloc]init];
    [arc testMRCObject];
//    TestMRC *mrc1  = [[TestMRC alloc]init];
//    [arc testReturnDic];
//    NSDictionary *adExtraDic1 = [mrc1 copyTest];
//////    TestNSObject *testObj  = [TestARC testReturnObj];
////    [TestARC testReturnObj];
////    [mrc1 testReturnDic];
//    [TestARC testReturnObj];
//    [arc getTestNSObject];
//    [arc copyTestARCObj];
//    [arc copyTestARCDic];
////    [arc copyTestARCDic];
////    [mrc1 copyTest];
////    NSLog(@"viewDidLoad adExtraDic1=%@",adExtraDic1);
//
//    //    [TestMRC testReturnObjA];
////    NSLog(@"viewDidLoad adExtraDic1=%p,adExtraDic1 count = %ld",adExtraDic1, RC(adExtraDic1));
////    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
////    NSDictionary *cpDic = [adExtraDic copy];
////    mrc.adExtraDic = [[NSMutableDictionary alloc] init];
////    mrc.adExtraDic = [mrc1 copyTest];
//    NSDictionary *adExtraDic0 =  [mrc1 testReturnDic];
//    NSDictionary *adExtraDic5 =  adExtraDic0;
//    TestNSObject *testObj1 =  [[TestNSObject alloc]init];
//    mrc.adExtraDic = [arc copyTestARCDic];
//    mrc.adExtraDic = [arc testReturnDic];
//    mrc.adExtraDic = [mrc1 testReturnDic];
//    mrc.adExtraDic = [mrc1 copyTest];
////    mrc.testObj = [arc getTestNSObject];
//    mrc.testObj = [arc copyTestARCObj];
//    mrc.testObj = [mrc1 getTestNSObject];
//    mrc.testObj = [mrc1 copyTestObj];
//    testObj1.testmrc = mrc;
//    [mrc getReport];
//    NSDictionary *adExtraDic2 = [mrc1 testReturnDic];
//    [mrc1 getTestNSObject];
//    testObjMember = [mrc1 getTestNSObject];
//    NSLog(@"viewDidLoad 111  testObjMember count = %ld", RC(testObjMember));
//    testDicMember = [mrc1 testReturnDic];
//    NSDictionary *adExtraDic3 = [arc testReturnDic];
//    NSDictionary *adExtraDic4 = [arc copyTestARCDic];
//    NSLog(@"viewDidLoad 111 adExtraDic2 111 count = %ld", [adExtraDic2 valueForKeyPath:@"retainCount"]);
//     NSLog(@"viewDidLoad 111 adExtraDic1 111 count = %ld", RC(adExtraDic1));
//     NSLog(@"viewDidLoad 111 adExtraDic2 111 count = %ld", RC(testDicMember));
//    NSLog(@"viewDidLoad 111 adExtraDic3 000 count = %ld", RC(adExtraDic3));
//    NSLog(@"viewDidLoad 111 adExtraDic4 000 count = %ld", RC(adExtraDic4));
//    testWeak1 = adExtraDic1;
//    testWeak2 = adExtraDic2;
//    testWeak3 = adExtraDic3;
//    testWeak4 = adExtraDic4;
////    NSLog(@"viewDidLoad 11 mrc adExtraDic1 = %@",adExtraDic1);
////    NSDictionary *cpDic11 = mrc.adExtraDic;
////    NSLog(@"viewDidLoad mrc mrc.adExtraDic = %@,count = %d",mrc.adExtraDic, RC(mrc.adExtraDic));
////    [mrc getReport];
////    mrc.obj = [TestMRC testReturnObjB];
////    TestMRC * mrc = [TestMRC testReturnObjA];
////     NSLog(@"viewDidLoad mrc count = %d", RC(mrc.adExtraDic));
////    NSObject * ss = [TestMRC testReturnObj];
////    NSLog(@"%@ viewDidLoad", ss.description);
////    sleep(1);
////    NSDictionary *adDic1 = @{@"pull_time": @(1),
////                             @"pull_time_1": [TestMRC testReturnObj]
////                             };
////    NSObject * ss = [TestMRC testReturnObj];
////    NSString *str = [NSString stringWithFormat:@"sunnyxx"];
////    NSObject *str = [[NSObject alloc] init];
//    // str是一个autorelease对象，设置一个weak的引用来观察它
////    reference = str;
////    NSLog(@"%@ viewDidLoad", reference);
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
////         NSLog(@"dispatch_after %@", reference);
////          NSLog(@"viewDidLoad delay adExtraDic2 count = %ld,adExtraDic3.count=%ld", RC(adExtraDic2),RC(adExtraDic3));
//        NSLog(@"viewDidLoad delay testWeak1 = %@,testWeak2=%@,testWeak3=%@,testWeak4=%@", testWeak1,testWeak2,testWeak3,testWeak4);
//    });
//    TestMRC *mrc2  = [[TestMRC alloc]init];
//    NSDictionary *adExtraDic1 = [mrc2 copyTest];
//    sleep(1);
//    [self testVoid];
//    NSLog(@"viewDidLoad end testWeak1 = %p,testWeak2=%p,testWeak3=%p", testWeak1,testWeak2,testWeak3);
//    NSLog(@"viewDidLoad end testConst=%@",testConst);
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    NSLog(@"viewWillAppear %@", reference); // Console: sunnyxx
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    NSLog(@"viewDidAppear %@", reference); // Console: (null)
}

- (void)dealloc
{
    NSLog(@"viewControl dealloc");
//    testObjMember = nil;
}
@end

//
//  TestMRC.m
//  TestBase
//
//  Created by chengjian on 2019/7/24.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestMRC.h"
#import "TestARC.h"
#import "TestNSObject.h"
#import "TestNSObjectA.h"
//#import "ViewControllerA.h"
//#import "TestThread.h"
__strong NSObject *objA = nil;
__strong NSDictionary *wAdExtraDic1 = nil;
__weak NSDictionary *testWeakDic = nil;
#define RC(obj) CFGetRetainCount((__bridge CFTypeRef)(obj))
NSObject *objB = nil;
@implementation TestMRC{
    TestNSObject *testMrcNSObjectMember;
}
@synthesize obj = _obj;

extern NSString *const testConst;
// 1,当把语义特性声明为assign时,setter和getter时方法内部实现
//- (void)setName:(NSString *)name{
//    _name = name;
//}
//- (NSString *)name{
//    return _name;
//}
//2,当把语义特性声明为retain时,setter和getter方法内部实现

//- (void)setObj:(NSObject *)obj{
//    if (_obj != obj) {
//        [_obj release];
//        _obj = [obj retain];
//    }
//}
//- (NSObject *)obj{
//    NSLog(@"retain MRC getter obj count =%ld\n",(unsigned long)[_obj retainCount]);
//    return [[ _obj retain] autorelease];;
//}

//- (NSString *)name{
//    return [[ _name retain] autorelease];
//}
//3,
////3,当把语义特性声明为copy时,setter和getter方法内部实现
//- (void)setObj:(NSObject *)name{
//    if (_name != name) {
//        [ _name release];
//        _name = [name copy];
//    }
//}
//- (NSObject *)obj{
//    return [[ _name retain] autorelease];
//}
//+ (void)run {
//    NSLog(@"run thread before..... =%@", [NSThread currentThread]);
//    [NSThread sleepForTimeInterval:2];
//    dispatch_sync(dispatch_get_main_queue(), ^{
//        [[NSThread currentThread] setName:@"main queue"];
//        NSLog(@"run thread dispatch main..... =%@", [NSThread currentThread]);
//        NSLog(@"main thread: %d", [NSThread isMainThread]);
//    });
//    NSLog(@"run thread after..... =%@", [NSThread currentThread]);
//}
//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        UIView *tempView = [[UIView alloc]init];
//        [tempView release];
//        [tempView setNeedsDisplay];
//    }
//    return self;
//}
+(void) showlog
{
    NSLog(@"Reference showlog 4 objA = %@", objA);
    NSLog(@"Reference showlog 5 objA = %@", objA.description);
}

//- (NSDictionary*)getReportInfoWithFeedbackTag
//{
////    NSLog(@"retain getReportInfoWithFeedbackTag 33 MRC self.obj count =%ld\n",(unsigned long)[self.obj retainCount]);
////    NSLog(@"retain getReportInfoWithFeedbackTag self.name count =%ld\n",(unsigned long)[self.name retainCount]);
//    NSLog(@"retain getReportInfoWithFeedbackTag self.obj count =%ld\n",(unsigned long)[self.obj retainCount]);
////    NSLog(@"retain getReportInfoWithFeedbackTag self.name count =%ld\n",(unsigned long)[self.name retainCount]);
//    self.name;
//    NSString *b = self.name;
//    NSDictionary *adDic = @{
//                            @"traceid": self.name?:@"",
////                            @"game_adtag":[self gameAdTag],
////                             @"name":self.name,
//                            @"game_adtag":self.obj,
//                            };
//     NSLog(@"retain getReportInfoWithFeedbackTag self.name count =%ld\n",(unsigned long)[self.name retainCount]);
//    NSLog(@"retain getReportInfoWithFeedbackTag self.obj count =%ld\n",(unsigned long)[self.obj retainCount]);
//    return adDic;
//}

- (NSString*)gameAdTag
{
    NSObject *obj = self.obj;
    NSLog(@"retain gameAdTag MRC self.obj count =%ld\n",(unsigned long)[obj retainCount]);
     [obj release];
    if ([obj isKindOfClass:[NSObject class]]) {
        obj.debugDescription;
    }
    return @"ssadda";
}

+(NSObject *) testReturnObjB
{
//    TestMRC *mrc  = [[TestMRC alloc]init];
    NSObject *obj = [[NSObject alloc]init];
//    mrc.obj = obj;
//    NSLog(@"retain testReturnObjB MRC 0 mrc count =%ld\n",(unsigned long)[obj retainCount]);
//    [obj release];
//    NSLog(@"retain testReturnObjB MRC 1 mrc count =%ld\n",(unsigned long)[obj retainCount]);
//    [obj release];
    return obj;
}

-(NSDictionary *)initTest
{
//    NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
//    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
//    [adExtraDic release];
    return  [[NSMutableDictionary alloc] init] ;
}

-(NSDictionary *)copyTest
{
//        TestMRC *testmrc = [[TestMRC alloc]init];
//        NSDictionary *adDic = @{ @"traceid": testmrc };
        NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
//    NSLog(@"TestMRC copyTest adExtraDic=%p",adExtraDic);
    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
     NSLog(@"copyTest  adExtraDic = %p", adExtraDic);
//    [adExtraDic release];
    return  adExtraDic;
}

-(NSDictionary *) testReturnDic
{
//    NSMutableDictionary *adExtraDic = [[[NSMutableDictionary alloc] init] autorelease];
     NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
     [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
//    [adExtraDic release];
//    [adExtraDic retain];
//    [adExtraDic retain];
//    [adExtraDic autorelease];
    return  [adExtraDic autorelease];
}

-(NSObject *) getReport
{
    TestMRC *testmrc = [[TestMRC alloc]init];
    [testmrc retain];
    NSLog(@"TestMRC getReport testObj.count=%ld",[testmrc retainCount]);
    [testmrc autorelease];
    [testmrc release];
    NSLog(@"TestMRC getReport testObj.count=%ld",[testmrc retainCount]);
    [testmrc testObj];
    [testmrc release];
     NSLog(@"TestMRC getReport testObj.count=%ld",[testmrc retainCount]);
//    TestNSObject *testobject = [[TestNSObject alloc]init];
////    [object release];
//    testmrc.testObj = testobject;
//    testmrc.testObj = [[TestNSObject alloc]init];
//    TestARC *testarc = [[TestARC alloc]init];
//    NSObject *object = [[NSObject alloc]init];
//    //    [object release];
//    testarc.objA = testobject;
//    ViewController *vc = [[ViewController alloc]init];
//    vc.obj = [[NSObject alloc]init];;
//    dispatch_queue_t queue0 =
//    dispatch_queue_create("test_serial_queue_111", DISPATCH_QUEUE_CONCURRENT);
//    NSLog(@"before dispatch_async");
    dispatch_async(dispatch_get_main_queue(), ^{
//        sleep(1);
          NSLog(@"dispatch_async");
        NSLog(@"TestMRC getReport testObj.count=%ld",[testmrc retainCount]);
    });
//    NSLog(@"after dispatch_async");
//    TestNSObject* testObj=[[[TestNSObject alloc] init]autorelease];
//    NSLog(@"TestMRC getReport testObj= %@,%p",testObj,testObj);
//    [testObj release];
//    sleep(2);
//    TestNSObject* testObj11=[[TestNSObject alloc] init];
//    NSLog(@"TestMRC getReport testObj11= %@,%p",testObj11,testObj11);
//    [testObj showlog];
//    NSLog(@"TestMRC getReport testObj= %@,%p,testObj.count=%ld",testObj,testObj,[testObj retainCount]);
//    TestARC *testarc = [[TestARC new] autorelease];
//    [testarc release];
//    [testarc getReport];
//    NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
//    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
//    _obj = [TestARC copyReturnObj];
//     _obj = [TestARC testReturnObj];
//    self.obj = [TestARC testReturnObj];
//    self.obj = [TestARC copyReturnObj];
//    NSLog(@"TestMRC getReport testObj = %ld",[_testObj retainCount]);
//     NSLog(@"TestMRC getReport _obj = %ld,self=%@",[_obj retainCount],self);
//    NSLog(@"TestMRC getReport _obj = %ld,self=%@,%@",[self.obj retainCount],self,testConst);
//     NSLog(@"TestMRC getReport self.count %ld,self=%@",[self retainCount],self);
//     NSLog(@"TestMRC getReport self.testObj.testObj %ld",[self.testObj retainCount]);
//    [self release];
//    [self release];
//    [self release];
////    [self release];
//    NSLog(@"TestMRC getReport self.count= %ld",[self retainCount]);
//    NSLog(@"TestMRC getReport self.testObj.count %ld",[self.testObj retainCount]);
//    TestARC *arc  = [[TestARC alloc]init];
//    [TestARC  testReturnObj];
//    [arc  copyTestARCObj];
//    NSDictionary *testObj = [arc  copyTestARCDic];
//    testWeakDic = testObj;
//    NSLog(@"TestMRC getReport testObj count=%ld,testWeakDic=%p",(unsigned long)[testObj retainCount],testWeakDic);
////     [testObj release];
//    TestMRC *mrc  = [[TestMRC alloc]init];
//    TestMRC *mrc1  = [[TestMRC alloc]init];
//    NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
//    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
//    NSDictionary *adExtraDic1 = [mrc1 testReturnDic];
//    mrc.adExtraDic = [mrc1 testReturnDic];
//    NSLog(@"retain getReport MRC 1 self.adExtraDic count =%ld,rc.adExtraDic count =%ld",(unsigned long)[self.adExtraDic retainCount],(unsigned long)[mrc.adExtraDic retainCount]);
    dispatch_queue_t queue1 =
            dispatch_queue_create("test_serial_queue_111", DISPATCH_QUEUE_CONCURRENT);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)),queue1, ^{
//        TestARC *testarc = [TestARC new];
//        [testarc release];
//        [testarc getReport];
//         NSLog(@"TestMRC delay getReport _obj = %ld,self=%@",[_obj retainCount],self);
//        NSLog(@"TestMRC delay getReport testObj = %ld",[_testObj retainCount]);
//         NSLog(@"TestMRC delay getReport testWeakDic=%p",testWeakDic);
////                  NSLog(@"retain delay getReport MRC 1 mrc.adExtraDic count =%ld",[mrc.adExtraDic retainCount]);
//                   NSLog(@"retain delay getReport MRC 1 self.adExtraDic count =%ld,rc.adExtraDic count =%ld",(unsigned long)[self.adExtraDic retainCount],(unsigned long)[mrc.adExtraDic retainCount]);
            });
//     NSDictionary *userInfo = @{@"isRefreshChannel":@(YES),@"channel_id":@"sdas",@"channel_id_qq":@(0),@"type":@"1",@"type":@"1",@"typess":@"asdsd",@"hello":@(NO)};
//     NSDictionary *adic11 =  [NSDictionary dictionaryWithObject:@"ddsdad" forKey:@"key1"];
//    NSDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
//    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
//    TestMRC *mrc  = [[TestMRC alloc]init];
//    mrc.adExtraDic = adExtraDic;
//    NSDictionary *adExtraDic0 =  [mrc.adExtraDic copy];
//    NSLog(@"retain getReport MRC 1 adExtraDic1 count =%ld,mrc.adExtraDic = %p,adExtraDic0=%p,mrc.adExtraDic_class =%@,adExtraDic_class =%@,adExtraDic0_class =%@,adic11_class =%@",(unsigned long)[adExtraDic0 retainCount],mrc.adExtraDic,adExtraDic0,[mrc.adExtraDic class],[adExtraDic class],[adExtraDic0 class],[userInfo class]);
//    [adExtraDic setValue:@("abcd") forKey:@"c2s_switch"];
//    NSMutableDictionary *adExtraDic1 = [adExtraDic copy];
//    NSMutableDictionary *bdic = [[self.adExtraDic copy] autorelease];
////    NSMutableDictionary *bdic11 = [bdic copy];
//    NSLog(@"retain before getReport MRC 1 self.adExtraDic count =%ld,bdic count =%ldbdic count =%ld,adExtraDic count=%ld,adExtraDic1 count=%ld,bdic=%@,self.adExtraDic_class=%@,adExtraDic1=%@,bdic=%p,self.adExtraDic=%p",(unsigned long)[self.adExtraDic retainCount],(unsigned long)[bdic retainCount],(unsigned long)[adExtraDic retainCount],(unsigned long)[adExtraDic1 retainCount] ,[bdic class],[self.adExtraDic class],[adExtraDic1 class],bdic,self.adExtraDic);
//
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//           NSLog(@"retain delay getReport MRC 1 self.adExtraDic count =%ld,adExtraDic count=%ld,adExtraDic1 count=%ld",(unsigned long)[self.adExtraDic retainCount],(unsigned long)[adExtraDic retainCount],(unsigned long)[adExtraDic1 retainCount]);
//    });
//    NSLog(@"retain getReport MRC 1 bdic count =%ld,adExtraDic count=%ld,adExtraDic1 count=%ld",(unsigned long)[bdic retainCount],(unsigned long)[adExtraDic retainCount],(unsigned long)[adExtraDic1 retainCount]);
//    [bdic release];
//    sleep(3);
    return nil;
}

+(id *) testReturnStrA
{
//    NSMutableDictionary *adic =  [NSMutableDictionary dictionaryWithObject:@"ddsdad" forKey:@"key1"];
//    NSString *ff  = [NSString stringWithFormat:@"dsdsddwdasdsdadda %d",10];
////    NSString *ff  = [NSString stringWithFormat:@"dsdsddw %d",10];
////    [ff release];
//    NSLog(@"retain testReturnStrA MRC 1 adic count =%ld\n",(unsigned long)[adic retainCount]);
//    NSMutableDictionary *bdic = [adic copy];
//    [adic setObject:@"abcd" forKey:@"key1"];
////    bdic["@key1"] = @"ddd";
//      NSLog(@"retain testReturnStrA MRC 2 adic count =%ld,adic=%p,bdic=%p,adic=%@,bdic=%@",(unsigned long)[adic retainCount],adic,bdic,adic,bdic);
//    [adic release];
    NSDictionary *adic =  [NSDictionary dictionaryWithObject:@"ddsdad" forKey:@"key1"];
    NSString *ff  = [NSString stringWithFormat:@"dsdsddwdasdsdadda %d",10];
    //    NSString *ff  = [NSString stringWithFormat:@"dsdsddw %d",10];
    //    [ff release];
    NSLog(@"retain testReturnStrA MRC 1 adic count =%ld\n",(unsigned long)[adic retainCount]);
    NSDictionary *bdic = [adic copy];
    //    bdic["@key1"] = @"ddd";
    NSLog(@"retain testReturnStrA MRC 2 adic count =%ld\n,adic=%p,bdic=%p,adic=%@,bdic=%@",(unsigned long)[adic retainCount],adic,bdic,adic,bdic);
//    [adic release];
    return adic;
}

+(TestMRC *) testReturnObjA
{
    TestMRC *mrc  = [[TestMRC alloc]init];
    NSObject *obj = [[NSObject alloc]init];
    mrc.obj = obj;
    [obj release];
    NSLog(@"retain testReturnObjA MRC 0 obj count =%ld\n",(unsigned long)[obj retainCount]);
    NSObject *obj1 = [[NSObject alloc]init];
    [obj release];
    [obj1 release];
    mrc.obj = obj1;
//    NSLog(@"retain testReturnObjA MRC 1 obj count =%ld\n",(unsigned long)[obj retainCount]);
    return mrc;
}


+(TestNSObject *) initStaticTestObj{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestMRC initStaticTestObj obj=%p",obj);
    return obj;
}

+(TestNSObject *) copyStaticTestObj{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestMRC copyStaticTestObj obj=%p",obj);
    return obj;
}

-(TestNSObject *) initTestObj{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestMRC initTestObj obj=%p",obj);
    return obj;
}

-(TestNSObject *) copyTestObj{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestMRC copyTestObj obj=%p",obj);
    return obj;
}

-(TestNSObject *) getTestNSObject
{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestMRC getTestNSObject obj=%p",obj);
    return [obj autorelease];
}

+(NSObject *) testReturnObj
{
    
//    TestMRC *mrc1  = [self testReturnObjA];
//    NSLog(@"retain testReturnObj MRC 0 mrc1 count =%ld\n",(unsigned long)[mrc1 retainCount]);
    TestMRC *mrc  = [[TestMRC alloc]init];
//    [TestMRC testReturnObj];
    NSObject *obj = [[NSObject alloc]init];
    NSObject *obj2 = [[NSObject alloc]init];
//    [obj release];
    mrc.obj = obj;
     NSLog(@"retain testReturnObj MRC 0 ff obj count =%ld\n",(unsigned long)[obj retainCount]);
    mrc.obj = obj2;
    NSObject *obj11 =  mrc.obj;
    NSObject *obj22 =  obj11;
      NSLog(@"retain testReturnObj MRC 1 ff obj count =%ld\n",(unsigned long)[obj retainCount]);
    NSLog(@"retain testReturnObj MRC 1 ff mrc.obj count =%ld\n",(unsigned long)[mrc.obj retainCount]);
    NSString *ff  = [NSString stringWithFormat:@"dsdsddwdasdsdadda %d",10];
//    mrc.name = ff;
//    NSString *ff2 =  ff;
    NSString *ff1  = @"dsdsddwdasdsdasdsadsdssaddsdsdadddasadsadsasfsfsafsaf";
    NSLog(@"retain testReturnObj MRC 0 ff count =%ld\n",(unsigned long)[ff retainCount]);
     NSLog(@"retain testReturnObj MRC 0 ff count =%ld\n",(unsigned long)[ff1 retainCount]);
    NSLog(@"retain testReturnObj MRC 0 ff obj11 count =%ld\n",(unsigned long)[obj11 retainCount]);
//    NSString *ff2  = mrc.name;
//    [obj release];
//    [ff release];
    NSLog(@"retain testReturnObj MRC ff  =%p\n",ff);
    NSLog(@"retain testReturnObj MRC  1 ff count =%ld\n",(unsigned long)[ff retainCount]);
//    [mrc release];
     NSLog(@"retain testReturnObj MRC self.obj count =%ld\n",(unsigned long)[obj retainCount]);
//    NSLog(@"retain testReturnObj mrc.name self.obj count =%ld\n",(unsigned long)[mrc.name retainCount]);
    NSLog(@"retain testReturnObj ff1 self.obj count =%ld\n",(unsigned long)[ff1 retainCount]);
//    [obj release];
//     [obj release];
    int a =10;
    a++;
    dispatch_queue_t queue = dispatch_queue_create("test_cj_serial", DISPATCH_QUEUE_SERIAL);
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), queue, ^{
//        NSLog(@"retain delay......0");
//    });
    NSLog(@"retain testReturnObj 22 MRC self.obj count =%ld\n",(unsigned long)[obj retainCount]);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), queue, ^{
//        [mrc release];
//          NSLog(@"retain testReturnObj delay MRC self.obj count =%ld\n",(unsigned long)[obj retainCount]);
        NSLog(@"retain delay......1");
//        [mrc getReportInfoWithFeedbackTag];
//        [obj release];
        //        NSLog(@"Reference showlog  dispatch_after 5 objC = %@", obj.description);
//        NSLog(@"retain testReturnObj delay MRC self.obj count =%ld\n",(unsigned long)[mrc retainCount]);
//        [obj release];
        NSLog(@"retain delay......2");
//        [mrc release];
    });
     NSLog(@"retain testReturnObj MRC self.obj count =%ld\n",(unsigned long)[mrc retainCount]);
    NSLog(@"retain testReturnObj 33 MRC self.obj count =%ld\n",(unsigned long)[obj retainCount]);
    NSLog(@"retain testReturnObj......end");
    [mrc release];
//     [mrc release];
//    [obj release];
    [ff release];
    [obj release];
    return obj;
}
//-(NSDictionary *) getDic
//{
//    NSDictionary *adDic22 = @{@"pull_time": @(1),
//                              @"pull_time_1": @(2)
//                              };
//    re
//}
+(void)setTestObj:(NSObject *)testObj{
    NSLog(@"%s retaincount=%lu",__FUNCTION__,(unsigned long)[testObj retainCount]);
}

-(NSObject *) initWithTestObj
{
    
//    NSObject *obj11 = [[TestMRC testReturnObj] retain];
//    NSLog(@"retain  initWithTestObj MRC self.obj count =%ld\n",(unsigned long)[obj11 retainCount]);
    NSDictionary *adDic1 = @{@"pull_time": @(1),
                                @"pull_time_1": @(2)
                                };
//    NSMutableDictionary *adDic11 = [NSMutableDictionary adDic1];
//    NSLog(@"retain MRC adDic11 count =%ld\n",(unsigned long)[adDic11 retainCount]);
    NSDictionary *adDic2 = [adDic1 mutableCopy];
     NSLog(@"retain MRC adDic11 count =%ld,adDic2 count =%ld",(unsigned long)[adDic1 retainCount],(unsigned long)[adDic2 retainCount]);
    NSLog(@"retain MRC adDic1 =%p,adDic2=%p,adDic1.class=%@,adDic2.class=%@",adDic1,adDic2,[adDic1 class],[adDic2 class]);
    NSString *ff  = [NSString stringWithFormat:@"dsdsddwdasdsdadda %d",10];
//     NSLog(@"retain MRC ff hilde =%d",ff.accessibilityElementsHidden);
//    ff.accessibilityElementsHidden = !ff.accessibilityElementsHidden;
//    NSString *dd  = [ff retain];
//    NSLog(@"retain MRC ff hilde =%d",ff.accessibilityElementsHidden);
//    NSLog(@"retain MRC dd hilde =%d",dd.accessibilityElementsHidden);
//    NSLog(@"retain MRC ff =%p,dd=%p",ff,dd);
//    NSLog(@"retain MRC ff count =%ld\n",(unsigned long)[ff retainCount]);
//    NSLog(@"retain MRC dd count =%ld\n",(unsigned long)[dd retainCount]);
//    [ff release];
//    NSLog(@"retain MRC ff count =%ld\n",(unsigned long)[ff retainCount]);
//    _obj = [[NSObject alloc]init];
//    [TestMRC setTestObj:[[NSObject alloc]init]];
    NSObject *obj = [[NSObject alloc]init];
//    NSObject *obj1 = [[NSObject alloc]init];
    NSObject *obj1 = obj;
    self.obj = [[[NSObject alloc]init] autorelease];
//     self.obj = obj;
    //    [testmrc.obj release];
    //    [testmrc.obj release];
//    [obj release];
    NSLog(@"retain MRC obj =%@,obj1=%@",obj,obj1);
    NSLog(@"retain MRC _obj count =%ld\n",(unsigned long)[_obj retainCount]);
    NSLog(@"retain MRC self.obj count =%ld\n",(unsigned long)[self.obj retainCount]);
    NSLog(@"retain MRC _obj count =%ld\n",(unsigned long)[_obj retainCount]);
    NSLog(@"retain MRC obj count =%ld\n",(unsigned long)[obj retainCount]);
    NSLog(@"retain MRC obj1 count =%ld\n",(unsigned long)[obj1 retainCount]);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //        NSLog(@"Reference showlog  dispatch_after 5 objC = %@", obj.description);
        NSLog(@"retain delay MRC self.obj count =%ld\n",(unsigned long)[self.obj retainCount]);
        NSLog(@"retain delay MRC _obj count =%ld\n",(unsigned long)[_obj retainCount]);
    });
    return obj;
}

+(void) testRetainCount
{
    TestMRC *testmrc = [[TestMRC alloc]init];
    NSObject *obj2 = [testmrc initWithTestObj];
//    NSObject *obj3 = [testmrc initWithTestObj];
    NSLog(@"retain count =%ld\n",CFGetRetainCount((__bridge CFTypeRef)(obj2)));
//    NSLog(@"Reference showlog 1111 Count = %lu", (unsigned long)[testmrc.obj retainCount]);
//    [testmrc.name release];
//    testmrc.obj.description;
//    NSDictionary *adDic11 = @{@"pull_time": @(1),
//                            @"pull_time_1": @(2)
//                            };
//    NSDictionary *adDic22 = @{@"pull_time": @(1),
//                              @"pull_time_1": @(2)
//                              };
//     NSLog(@"Reference showlog 666 Count = %@,%@", adDic11,adDic22);
//    [adDic11 release];
////    [adDic11 allKeys];
////   NSLog(@"Reference showlog 333 Count = %lu", (unsigned long)[adDic11 retainCount]);
//    NSMutableDictionary *addInfo = [NSMutableDictionary dictionaryWithDictionary:adDic11];
//    NSLog(@"Reference showlog 444 Count = %lu", (unsigned long)[adDic11 retainCount]);
//    NSLog(@"Reference showlog 5555 Count = %lu", (unsigned long)[addInfo retainCount]);
//    NSObject *obj = [[NSObject alloc]init];
//    [obj release];
//    dispatch_queue_t queue = dispatch_queue_create("test_serial", DISPATCH_QUEUE_SERIAL);
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), queue, ^{
//        int a = 20;
//        NSDictionary *adDic = @{@"pull_time": @(a),
//                                @"pull_time_1": @(a),
//                                @"pull_time_2": obj.description
//                                };
//        NSLog(@"Reference showlog  111 5 objA = %@", adDic);
//        NSLog(@"Reference showlog 3 Count = %lu", (unsigned long)[adDic retainCount]);
//        //        NSLog(@"Reference showlog  dispatch_after 5 objA = %@", obj.description);
//    });
//    [obj release];
//    [obj release];
//    NSLog(@"Reference showlog  111 5 objA = %@", @(a));
//    objA = obj;
//    [obj release];
//    NSObject *obj1= [obj retain];
//    NSObject *obj1 = obj;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"Reference showlog  dispatch_after 5 objA = %@", objA);
//        NSLog(@"Reference showlog  dispatch_after 5 objA = %@", obj.description);
    });
//    [obj release];
//    NSString *str = [NSString stringWithFormat:@"sunnyxx"];
//    NSLog(@"Reference MyObject 3 Count = %lu", (unsigned long)[str retainCount]);
//    [str release];
//    [str release];
//     NSLog(@"Reference MyObject 4 Count = %lu", (unsigned long)[str retainCount]);
//    str.description;
//    UIView *tempView = [[UIView alloc]init];
//    [tempView release];
//    tempView.description;
//    [tempView setNeedsDisplay];
    //    TestThread *testThread = [[TestThread alloc]init];
    //    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(run) object:nil];
    //    [thread setName:@"abcd"];
    //    [thread start];
    //    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    //    NSString* s = [[NSString alloc]initWithString:@"This is a test string"];
    //    s = [s substringFromIndex:[s rangeOfString:@"a"].location];//内存泄露
    //    [s release];//错误释放 [pool drain];//EXC_BAD_ACCESS return 0;
    
    //    [s description];
    //    [NSArray arrayWithObjects: @"aaaa",@"dsds"];
    //    for(int i=0;i<600000;i++)
    //    {
    //        MyObject *object = [[MyObject alloc] init];
    //        //    object.name = @"dd";
    //        object.adExtraDic = [NSDictionary dictionaryWithObject:@"ddsdad" forKey:@"key1"];
    //        for(int i=0;i<1000;i++)
    //        {
    //            dispatch_queue_t queue =
    //            dispatch_queue_create("test_serial_queue", DISPATCH_QUEUE_CONCURRENT);
    //            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), queue, ^{
    //                NSString *ff = object.adExtraDic[@"key1"];
    //                NSLog(@"Reference MyObject 2 44444 Count = %@",ff);
    //            });
    //        }
    //        //    object.name = @"fff";
    //        object.adExtraDic = [NSDictionary dictionaryWithObject:@"qqq" forKey:@"key1"];
    //    }
    ////    object = [[MyObject alloc] init];
    //    NSLog(@"Reference MyObject 2 2222 Count = %@",object.name);
    //    NSLog(@"Reference MyObject 1 Count = %lu", (unsigned long)[object retainCount]);
    //    MyObject *another = [object retain];
    //    another.name = @"dddd";
    //    NSLog(@"Reference MyObject 2 Count = %@,%@,%@,%@", another.name,another.name,another,object);
    //    NSLog(@"Reference MyObject 3 Count = %lu", (unsigned long)[object retainCount]);
    //    [object release];
    //    NSLog(@"Reference MyObject 4 Count = %lu", (unsigned long)[object retainCount]);
    //    [another release];
    //    [another release];
    //    NSLog(@"Reference MyObject 5 Count = %lu", (unsigned long)[object retainCount]);
    //    NSLog(@"Reference MyObject 6 Count = %@", another.name);
    //    NSLog(@"Reference MyObject 7 Count = %lu", (unsigned long)[another retainCount]);
    //    NSLog(@"Reference MyObject 8 Count = %@", object.name);
    
    //    NSObject *object1 = [[NSObject alloc] init];
    //    NSLog(@"Reference Count = %lu", (unsigned long)[object1 retainCount]);
    //    NSObject *another1 = object1;
    //    NSLog(@"Reference Count = %lu", (unsigned long)[object1 retainCount]);
    //    [another1 release];
    //    NSLog(@"Reference Count = %lu", (unsigned long)[object1 retainCount]);
    //    [object1 release];
}
-(void)testMRCObject
{
    TestMRC *mrc  = [[TestMRC alloc]init];
    testMrcNSObjectMember = [[mrc getTestNSObject] retain];
    NSLog(@"TestMRC  testObjMember mrc = %@", mrc);
//    self.testObj = [[mrc getTestNSObject] retain];
    NSLog(@"TestMRC  testObjMember count = %ld", RC(testMrcNSObjectMember));
//    testMrcNSObjectMember = testNSObject;
//    NSLog(@"TestARC  testObjMember count = %ld", RC(self.objA));
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
////            NSLog(@"TestARC dispatch_time count = %ld", RC(self.objA));
//            NSLog(@"TestARC dispatch_time count ");
////            NSLog(@"TestMRC  dispatch_time count = %ld", RC(self.testObj));
//        });
    [mrc release];
}
//- (void)dealloc
//{
//    NSLog(@"TestMRC dealloc obj=%p",self);
//}
- (void)dealloc
{
    testMrcNSObjectMember = nil;
//    NSLog(@"TestMRC dealloc self=%@,count = %ld", self, RC(testMrcNSObjectMember));
//    [testMrcNSObjectMember release];
//    [testMrcNSObjectMember release];
    NSLog(@"TestMRC dealloc self=%@,count = %ld", self, 0L);
//    [self.testObj release];
//    self.testObj = nil;
//    [testMrcNSObjectMember release];
}
@end

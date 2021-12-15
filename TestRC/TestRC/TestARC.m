//
//  TestARC.m
//  TestBase
//
//  Created by chengjian on 2019/7/24.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestARC.h"
#import "TestMRC.h"
#import "TestNSObject.h"
//#import "TestThread.h"
__weak NSObject *objC = nil;
NSObject *objD = nil;
#define RC(obj) CFGetRetainCount((__bridge CFTypeRef)(obj))
@implementation TestARC{
    TestNSObject *testObjMember;
}
@synthesize obj = _obj;
+(void) showlog
{
    NSLog(@"Reference showlog 4 objC = %@", objC);
    NSLog(@"Reference showlog 5 objC = %@", objC.description);
}

+(NSObject *) testReturnObj
{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestARC testReturnObj obj=%p",obj);
    TestNSObject *obj1 = obj;
    return obj1;
}

+(TestNSObject *) getTestNSObject
{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestARC testObj obj=%p",obj);
    return obj;
}

+(NSObject *) initReturnObj{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestARC initReturnObj obj=%p",obj);
    return obj;
}

+(NSObject *) copyReturnObj{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestARC copyReturnObj obj=%p",obj);
    return obj;
}

-(NSDictionary *) testReturnDic
{
    NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *adExtraDic1 = adExtraDic;
    return  adExtraDic1 ;
}

-(NSDictionary *) copyTestARCDic
{
    NSMutableDictionary *adExtraDic = [[NSMutableDictionary alloc] init];
//    NSLog(@"TestARC copyTestARCDic adExtraDic=%p",adExtraDic);
    return  adExtraDic ;
}

-(TestNSObject *) copyTestARCObj
{
    TestNSObject *obj = [[TestNSObject alloc]init];
    NSLog(@"TestARC copyTestARCObj obj=%p",obj);
    return obj;

}

+(void)setTestObj:(NSObject *)testObj{
    NSLog(@"%s retaincount=%lu",__FUNCTION__,RC(testObj));
}
//- (NSObject *)obj{
//    NSLog(@"sdsdsfd");
//    return _obj;
//}
//- (NSObject *)testObj{
//    NSLog(@"sdsdsfd");
//    return _obj;
//}

-(NSObject *) initWithTestObj
{
    NSObject *obj = [[NSObject alloc]init];
    self.obj = obj;
    NSObject *obj1 = self.obj;
//    obj1 = self.obj;
    NSLog(@"retain ARC obj1 count =%ld\n",RC(obj1));
    NSLog(@"retain ARC self.obj =%@,count =%ld\n",self.obj,RC(self.obj));
    NSLog(@"retain ARC _obj count =%ld\n",RC(_obj));
    NSLog(@"retain ARC self.obj count =%ld\n",RC(self.obj));
    NSLog(@"retain ARC self.obj count =%ld\n",RC(self.obj));
//    NSLog(@"retain ARC testObj count =%ld\n",RC([self.testObj]));
    NSLog(@"retain ARC _obj count =%ld\n",RC(_obj));
    NSLog(@"retain ARC obj count =%ld\n",RC(obj));
//    NSLog(@"retain ARC obj1 count =%ld\n",RC(obj1));
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            //        NSLog(@"Reference showlog  dispatch_after 5 objC = %@", obj.description);
            NSLog(@"retain delay ARC self.obj count =%ld\n",RC(self.obj));
            NSLog(@"retain delay ARC _obj count =%ld\n",RC(_obj));
        });
    return obj;
}

+(void) testRetainCount
{
    TestARC *testarc = [[TestARC alloc ] init];
    NSLog(@"retain ARC testarc =%@",testarc);
    NSObject *obj2 = [testarc initWithTestObj];
    //    NSObject *obj3 = [testARC initWithTestObj];
    NSLog(@"retain ARC count =%ld\n",RC(obj2));
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"Reference showlog  dispatch_after 5 objC = %@", objC);
        //        NSLog(@"Reference showlog  dispatch_after 5 objC = %@", obj.description);
    });
}

-(void) testMRCObject
{
    TestMRC *mrc  = [[TestMRC alloc]init];
//    [mrc testMRCObject];
    testObjMember = [mrc getTestNSObject];
//    TestNSObject * objA = [mrc getTestNSObject];
//    self.objA = objA;
//    self.objA = nil;
    NSLog(@"TestARC  testObjMember count = %ld", RC(testObjMember));
////    NSLog(@"TestARC  testObjMember count = %ld", RC(self.objA));
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
////            NSLog(@"TestARC dispatch_time count = %ld", RC(self.objA));
//            NSLog(@"TestARC dispatch_time count " );
//        });
}

-(void)dealloc
{
    NSLog(@"TestARC dealloc count = %ld", RC(testObjMember));
    NSLog(@"TestARC dealloc");
}
@end

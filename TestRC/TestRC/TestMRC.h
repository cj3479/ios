//
//  TestMRC.h
//  TestRC
//
//  Created by chengjian on 2019/7/30.
//  Copyright © 2019 chengjian. All rights reserved.
//

//#import <Cocoa/Cocoa.h>
//#import "TestNSObject.h"
#import <UIKit/UIKit.h>
//NS_ASSUME_NONNULL_BEGIN
@class TestNSObject;
@interface TestMRC : NSObject{
    NSString *_name;
    NSObject *_obj;
}
//@property (nonatomic, weak) NSObject *obj;
+(void) testRetainCount;
+(void) showlog;
+(NSObject *) testReturnObj;
+(TestMRC *) testReturnObjA;
+(NSObject *) testReturnObjB;
-(NSObject *) getReport;
-(NSDictionary *) testReturnDic;
//-(NSDictionary *) initTest;
-(NSDictionary *) copyTest;
+(id *) testReturnStrA;

+(TestNSObject *) initStaticTestObj;

+(TestNSObject *) copyStaticTestObj;

//-(TestNSObject *) initTestObj;

-(TestNSObject *) copyTestObj;

-(TestNSObject *) getTestNSObject;
-(void)testMRCObject;
@property (nonatomic, retain) NSDictionary *adExtraDic;

@property (nonatomic,retain)NSString * name;
@property (nonatomic,retain)NSObject * obj;
@property (nonatomic,retain)TestNSObject * testObj;
@property (nonatomic,assign)int aa;
@end

//NS_ASSUME_NONNULL_END

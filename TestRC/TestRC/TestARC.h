//
//  TestARC.h
//  TestRC
//
//  Created by chengjian on 2019/8/1.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class TestNSObject;
@interface TestARC : NSObject{
    NSString *_name;
    NSObject *_obj;
}
//@property (nonatomic, weak) NSObject *obj;
+(void) testRetainCount;
+(void) showlog;
+(NSObject *) testReturnObj;
+(TestNSObject *) getTestNSObject;
+(NSObject *) initReturnObj;
+(NSObject *) copyReturnObj;
-(NSDictionary *) testReturnDic;
-(NSDictionary *) copyTestARCDic;
-(TestNSObject *) copyTestARCObj;
-(void) testMRCObject;
@property (nonatomic,retain)NSString * name;
@property (nonatomic,retain)NSObject * obj;
@property (nonatomic,retain)TestNSObject * objA;
@property (nonatomic,assign)int aa;
@end

NS_ASSUME_NONNULL_END

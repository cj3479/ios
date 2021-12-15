//
//  MyObject.h
//  TestBase
//
//  Created by chengjian on 2019/5/29.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
NS_ASSUME_NONNULL_BEGIN
#define QBM_ADD_SECTION_DATA(sectname) __attribute((used, section("__DATA," #sectname " ")))

#define QBM_EXPORT_MODULE_PROTOCOL(protocolName, impl) \
    char* k##protocolName##_service QBM_ADD_SECTION_DATA(QBModuleImpl) = "" #protocolName ":" #impl "";

@interface MyObject : NSObject{
    NSString *a;
}
@property(retain) NSString *a;
-(void)testStatic;
@end

NS_ASSUME_NONNULL_END

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

@interface MyObject : NSObject{
    NSString *a;
}
@property(retain) NSString *a;
-(void)testStatic;
@end

NS_ASSUME_NONNULL_END

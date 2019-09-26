//
//  NSJSONSerialization+QGW.m
//  TestBase
//
//  Created by chengjian on 2019/9/17.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "NSJSONSerialization+QGW.h"

//#import <AppKit/AppKit.h>


@implementation NSJSONSerialization (QGW)
+ (nullable NSData *)qgw_dataWithJSONObject:(id)obj options:(NSJSONWritingOptions)opt error:(NSError **)error
{
    return [self qgw_dataWithJSONObject:obj options:opt error:error];
}
@end

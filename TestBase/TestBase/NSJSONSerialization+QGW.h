//
//  NSJSONSerialization+QGW.h
//  TestBase
//
//  Created by chengjian on 2019/9/17.
//  Copyright © 2019 chengjian. All rights reserved.
//

//#import <AppKit/AppKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSJSONSerialization (QGW)
+ (nullable NSData *)qgw_dataWithJSONObject:(id)obj options:(NSJSONWritingOptions)opt error:(NSError **)error;
@end

NS_ASSUME_NONNULL_END

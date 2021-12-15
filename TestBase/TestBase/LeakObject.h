//
//  LeakObject.h
//  TestBase
//
//  Created by chengjian on 2021/10/24.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeakOneObject.h"
NS_ASSUME_NONNULL_BEGIN
@class LeakOneObject;
@interface LeakObject : NSObject
@property(nonatomic, strong) LeakOneObject *leakOneObject;
@end

NS_ASSUME_NONNULL_END


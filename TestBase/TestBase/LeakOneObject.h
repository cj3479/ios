//
//  LeakObject.h
//  TestBase
//
//  Created by chengjian on 2021/10/24.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeakObject.h"
@class LeakObject;
@interface LeakOneObject : NSObject
@property (nonatomic, strong) LeakObject *leakObj1;
@end

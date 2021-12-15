//
//  CustomObject.m
//  TestBase1
//
//  Created by chengjian on 2021/1/23.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "CustomObject.h"
@interface CustomObject() {
    long a[200];
}
@end
@implementation CustomObject
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"CustomObject init");
    }
    return self;
}
- (void)dealloc
{
    NSLog(@"CustomObject dealloc");
}
@end


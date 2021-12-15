//
//  TestSampleProtocolSub.m
//  TestBase
//
//  Created by chengjian on 2020/1/10.
//  Copyright © 2020 chengjian. All rights reserved.
//

#import "TestSampleProtocolSub.h"

@implementation TestSampleProtocolSub
- (instancetype)init
{
    self = [super init];
    if (self) {
        _testReadonly = @"fdsf";
    }
    return self;
}
@end

//
//  TestNSObject.m
//  TestRC
//
//  Created by chengjian on 2019/8/11.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestNSObjectA.h"
#import <Foundation/Foundation.h>
NSString *const testConst1 = @"sffdf";
@implementation TestNSObjectA

- (void)dealloc
{
    NSLog(@"TestNSObjectA dealloc obj=%p",self);
}
@end

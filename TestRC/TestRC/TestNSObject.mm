//
//  TestNSObject.m
//  TestRC
//
//  Created by chengjian on 2019/8/11.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestNSObject.h"
#import <Foundation/Foundation.h>
NSString *const testConst = @"sffdf";
@implementation TestNSObject

- (void)dealloc
{
    NSLog(@"TestNSObject dealloc obj=%p",self);
}
-(void) showlog
{
    NSLog(@"TestNSObject showlog");
}
@end

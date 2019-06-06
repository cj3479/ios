//
//  SelectDemo.m
//  TestBase
//
//  Created by chengjian on 2019/6/4.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "SelectDemo.h"

@implementation SelectDemo
@synthesize methodTest=_methodTest;
-(void)parentMethod
{
    NSLog(@"parent method Call Success!");
}

-(void)TestParentMethod
{
//     NSLog(@"fffff =%@",_methodTest);
    if (_methodTest)
    {
        [self performSelector:_methodTest withObject:nil];
    }
}

-(void)TestSubMethod
{
    if (_methodTest)
    {
        [self performSelector:_methodTest withObject:nil];
    }
}
@end

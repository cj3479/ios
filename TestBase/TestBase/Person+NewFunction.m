//
//  Person+NewFunction.m
//  TestApp1
//
//  Created by chengjian on 2019/5/24.
//  Copyright © 2019年 chengjian. All rights reserved.
//Ne

#import "Person+NewFunction.h"
NSString * const TestDEfault = @"__default__";
extern NSString * const TestExtern = @"__extern__";
static NSString * const TestStattic = @"__static__";
@implementation Person(dd)
-(void)eat{
    NSLog(@"the person is eating! %@",TestStattic);
}
-(void)run{
    NSLog(@"the person dd is runing!");
}
-(void)eataaa{
    NSLog(@"the person is eating!");
}
@end

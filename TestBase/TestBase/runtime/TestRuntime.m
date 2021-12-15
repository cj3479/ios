//
//  TestRuntime.m
//  TestBase
//
//  Created by chengjian on 2021/3/1.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestRuntime.h"
#import <objc/runtime.h>
@implementation TestRuntime
id wrongTypeGetter(id object, SEL sel) {
    NSLog(@"chengjian_test wrongTypeGetter");
    return nil;
}

void wrongTypeSetter(id object, SEL sel, id value) {
    NSLog(@"chengjian_test void wrongTypeSetter");
}

+(BOOL)resolveInstanceMethod: (SEL)selector
{
    NSString * selName = NSStringFromSelector(selector);
    NSLog(@"chengjian_test resolveInstanceMethod selName=%@",selName);
//    if ([selName hasPrefix: @"set"]) {
//        class_addMethod(self, selector, (IMP)wrongTypeSetter, "v@:@");
//    } else {
//        class_addMethod(self, selector, (IMP)wrongTypeGetter, "@@:");
//    }
    return [super resolveInstanceMethod:selector];
}

-(id)forwardingTargetForSelector: (SEL)aSelector
{
    // 甚至可以通过runtime遍历自己属性找到可以响应方法的接盘侠
    NSString * selName = NSStringFromSelector(aSelector);
    NSLog(@"chengjian_test forwardingTargetForSelector selName=%@",selName);
//    if ([selName hasSuffix: @"Value"]) {
        return @"sdsdsd";
//    }
//    return nil;
}

-(void)testAA
{
    NSLog(@"chengjian_test testAA");
}

+(void)testStatic
{
    NSLog(@"chengjian_test  testStatic");
}
  
+(BOOL)resolveClassMethod:(SEL)name
{
    NSLog(@"chengjian_test  resolveClassMethod %@", NSStringFromSelector(name));
    return [super resolveClassMethod:name];
}
@end

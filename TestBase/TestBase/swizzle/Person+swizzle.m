//
//  Person+swizzle.m
//  TestBase
//
//  Created by chengjian on 2019/10/1.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "Person+swizzle.h"
#import <objc/runtime.h>

@implementation Person (swizzle)
+(void)load{
    NSLog(@"load Person (swizzle)");
}
+ (void)loadTest {
    static dispatch_once_t onceToken;
        // We want to make sure this is only done once!
    dispatch_once(&onceToken, ^{
        Class class1 = [self class];
        
        // Get the representation of the method names to swizzle.
        SEL originalSelector = @selector(sayHello);
        SEL swizzledSelector = @selector(p_sayHello);
        // Get references to the methods to swizzle.
        Method originalMethod = class_getInstanceMethod(class1, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class1, swizzledSelector);
        
        // Attempt to add the new method in place of the old method.
        BOOL didAddMethod = class_addMethod(class1, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        
        // If we succeeded, put the old method in place of the new method.
        if (didAddMethod) {
            class_replaceMethod(class1, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            // Otherwise, just swap their implementations.
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (void)p_sayHello {
//    [self p_sayHello];
    
    NSLog(@"Person + swizzle say hello");
}
@end

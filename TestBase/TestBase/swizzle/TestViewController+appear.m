//
//  TestViewControllerAA+appear.m
//  TestBase
//
//  Created by chengjian on 2019/10/1.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestViewController+appear.h"

#import <objc/runtime.h>

@implementation TestViewController (appear)
+ (void)loadTest {
    static dispatch_once_t onceToken;
        // We want to make sure this is only done once!
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        // Get the representation of the method names to swizzle.
        SEL originalSelector = @selector(viewWillAppear:);
        SEL swizzledSelector = @selector(test_viewWillAppear:);
        // Get references to the methods to swizzle.
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        // Attempt to add the new method in place of the old method.
        BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        
        // If we succeeded, put the old method in place of the new method.
        if (didAddMethod) {
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            // Otherwise, just swap their implementations.
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (void)test_viewWillAppear:(BOOL)animated{
    NSLog(@"chengjian test viewWillAppear");
    [self test_viewWillAppear:animated];
}
@end

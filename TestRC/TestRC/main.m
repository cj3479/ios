//
//  main.m
//  TestRC
//
//  Created by chengjian on 2019/7/30.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "TestMRC.h"
#import "TestARC.h"
int main(int argc, char * argv[]) {
    
    NSDictionary * dic1=[NSDictionary dictionaryWithObject:@"sss" forKey:@"key1"];
    NSString * test=@"aa";
    NSString * test1 = [dic1 objectForKey:@"key0"] ? : @"sdsd";
//    [NSDictionary testReturnObjB];
//    TestMRC *myview = [[TestMRC alloc]init];
//    [TestMRC testRetainCount];
//     [TestMRC showlog];
    dispatch_async(dispatch_get_main_queue(), ^{
//         [TestMRC testRetainCount];
//         [TestARC testRetainCount];
    });
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [TestMRC testRetainCount];
//    });
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

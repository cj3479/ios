//
//  TestBundle.m
//  testDMlib
//
//  Created by chengjian on 2019/9/30.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestBundle.h"
@implementation TestBundle
+(UIImage*)testDMBundle{
    NSBundle *bundle = [NSBundle bundleForClass:[TestBundle class]];
    NSString *bundlePath = [bundle pathForResource:@"WeiboSDK" ofType:@"bundle"];
    NSString *strC = [[NSBundle bundleWithPath:bundlePath] pathForResource:@"empty_failed" ofType:nil inDirectory:@"images"];
    NSString *bundlePath1 = [bundle pathForResource:@"baa.jpg" ofType:nil];
    NSLog(@"chengjian_path strC=%@",strC);
    UIImage *image = [UIImage imageWithContentsOfFile:bundlePath1];
    return image;
}
@end

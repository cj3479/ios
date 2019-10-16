//
//  TestBundle.m
//  testDMlib
//
//  Created by chengjian on 2019/9/30.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestBundle.h"
//#import "AFURLSessionManager.h"
//#import "TestStaticlib22.h"
@implementation TestBundle
+(UIImage*)testDMBundle{
    UIImage *image =nil;
//    TestStaticlib22 *lib2 = [[TestStaticlib22 alloc]init];
//    NSBundle *bundle = [NSBundle bundleForClass:[TestBundle class]];
//    NSString *bundlePath = [bundle pathForResource:@"WeiboSDK" ofType:@"bundle"];
//    NSString *strC = [[NSBundle bundleWithPath:bundlePath] pathForResource:@"empty_failed" ofType:nil inDirectory:@"images"];
//    NSString *bundlePath1 = [bundle pathForResource:@"baa.jpg" ofType:nil];
//    NSLog(@"chengjian_path strC=%@",strC);
//    image = [UIImage imageWithContentsOfFile:bundlePath1];
//    
//     // 获取info字典
//    NSString *bundlePath2 = [bundle pathForResource:@"Info" ofType:@"plist"];
//    NSMutableDictionary *infoDict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath2];
//    NSString *version = [infoDict objectForKey:@"CFBundleShortVersionString"];
//    
//    // 或者
//    NSDictionary *tempInfoDict = [bundle infoDictionary];
//    NSLog(@"testdmlib info %@",infoDict);
//    NSLog(@"testdmlib tempInfoDict %@",tempInfoDict);
    return image;
}
@end

//
//  testFWStatic.m
//  testfwstatic
//
//  Created by chengjian on 2019/6/3.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "testFWStatic.h"
#import "testfwstatic/testfwstatic-Swift.h"
@implementation testFWStatic
-(void)testFWStaticAk{
    NSLog(@"test mmmmmmm framework static");
}
//+(UIImage*)getImage{
////    NSBundle bundleWithURL:<#(nonnull NSURL *)#>
//
//    NSBundle *bundle0 = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"fwbundle" withExtension:@"bundle"]];
//    NSString *str = [[bundle0 resourcePath] stringByAppendingFormat:@"/b.jpg"];
//    UIImage *image = [UIImage imageWithContentsOfFile:str];
//
//
//    NSBundle *bundle = [NSBundle bundleForClass:[testFWStatic class]];
//     NSString *bundlePath = [bundle pathForResource:@"WeiboSDK" ofType:@"bundle"];
//     NSString *strC = [[NSBundle bundleWithPath:bundlePath] pathForResource:@"empty_failed" ofType:nil inDirectory:@"images"];
//     NSString *bundlePath1 = [bundle pathForResource:@"baa.jpg" ofType:nil];
//     NSLog(@"chengjian_path strC=%@",strC);
//     UIImage *image1 = [UIImage imageWithContentsOfFile:bundlePath1];
//
//      // 获取info字典
//     NSString *bundlePath2 = [bundle pathForResource:@"Info" ofType:@"plist"];
//     NSMutableDictionary *infoDict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath2];
//     NSString *version = [infoDict objectForKey:@"CFBundleShortVersionString"];
//
//     // 或者
//     NSDictionary *tempInfoDict = [bundle infoDictionary];
//     NSLog(@"testdmlib info %@",infoDict);
//     NSLog(@"testdmlib tempInfoDict %@",tempInfoDict);
//    return image;
//
//}
@end

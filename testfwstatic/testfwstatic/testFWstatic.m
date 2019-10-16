//
//  testFWStatic.m
//  testfwstatic
//
//  Created by chengjian on 2019/6/3.
//  Copyright © 2019 chengjian. All rights reserved.
//

import "testFWStatic.h"

@implementation testFWStatic
-(void)testFWStaticA{
    NSLog(@"test mmmmmmm framework static");
}
+(UIImage*)getImage{
//    NSBundle bundleWithURL:<#(nonnull NSURL *)#>
   
    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"fwbundle" withExtension:@"bundle"]];
    NSString *str = [[bundle resourcePath] stringByAppendingFormat:@"/b.jpg"];
    UIImage *image = [UIImage imageWithContentsOfFile:str];
    return image;
                        
}
@end

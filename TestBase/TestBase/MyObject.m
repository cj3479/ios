//
//  MyObject.m
//  TestBase
//
//  Created by chengjian on 2019/5/29.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import "MyObject.h"
QBM_EXPORT_MODULE_PROTOCOL(MttWelfareCenterProtocol, MttWelfareCenterProtocolImpl);
@implementation MyObject
-(id)init{
    if (self==[super init]) {
        [self setA:nil];
    }
    return self;
}
-(void)testStatic{
    static int a= 10;
    a = 
    a++;
    NSLog(@"chengjian_test_static %d",a);
}
@end

//
//  TestNoUserBS.m
//  TestBuildSetting
//
//  Created by chengjian on 2019/12/24.
//  Copyright © 2019 tencent. All rights reserved.
//

#import "TestNoUserBS.h"
extern int TestNoUserBS_qqq = 10;
extern int TestNoUserBS_bbbb =10;
static int TestNoUserBS_demoX = 1; // 局部符号
static int testNoUserBS_bbbbbb = 20; // 局部符号
int TestNoUserBS_demoY = 2; // 全局符号
//int vv = 40;

static int TestNoUserBS_foofoo11() // 局部符号
{
    return TestNoUserBS_demoX + TestNoUserBS_demoY;
}
int TestNoUserBS_foo11() // 全局符号
{
    return TestNoUserBS_demoX + TestNoUserBS_demoY;
}
@implementation TestNoUserBS
-(void)testNoUserBS_member{
    NSLog(@"chengjian testNoUserBS_member");
}
@end

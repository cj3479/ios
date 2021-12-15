//
//  LibPerson+static1.m
//  teststaticlib
//
//  Created by chengjian on 2019/10/5.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "LibPerson+static1.h"
#import "LibPerson.h"
@implementation LibPerson (static1)
-(void)eat{
    NSLog(@"chengjian eat LibPerson+static1 category");
}
-(void)eatStatic1{
    [[LibPerson class] eat];
    [LibPerson eat22];
    NSLog(@"chengjian eatStatic1 LibPerson+static1 category");
}
@end

//
//  teststaticlib.m
//  teststaticlib
//
//  Created by chengjian on 2019/5/31.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "Teststaticlib.h"
#import "LibPerson.h"
//#import "testFWStatic.h"
@implementation Teststaticlib
-(void)testslib11:(NSString *)name{
    [LibPerson eat22];
    NSLog(@"test static 111111qqqddd name=%@",name);
}
@end

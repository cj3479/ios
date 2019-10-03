//
//  LibPerson.m
//  testDMlib
//
//  Created by chengjian on 2019/6/3.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "LibPerson.h"

@implementation LibPerson
+(void)load{
   NSLog(@"load static lib.....");
}
- (void)eat{
    NSLog(@"eating.....start");
    sleep(1);
    NSLog(@"eating.....start");
}
- (void)watch{
    NSLog(@"watch.....");
}
@end

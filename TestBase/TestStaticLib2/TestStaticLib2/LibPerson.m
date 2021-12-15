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
   NSLog(@"load static lib2.....");
}
- (void)eat{
    NSLog(@"eating.....start");
    sleep(1);
    NSLog(@"eating.....start");
}
- (void)watch{
    NSLog(@"watch static lib2.....");
}
- (void)watch22{
    NSLog(@"watch22 static lib2.....");
}
@end

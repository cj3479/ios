//
//  TestMemory.m
//  TestBase
//
//  Created by chengjian on 2021/12/17.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "TestMemory.h"

@implementation TestMemory
void* p;
- (void)testSanitizer{
     int* array = new int[100];
//     delete [] array;
//    NSLog(@"chengjian_test testSanitizer value=%d",array[1]);
    p = malloc (7);
    int aa = array[100];
    NSLog(@"chengjian_test testSanitizer aa=%d",aa);
//    p = 0;
    NSLog(@"chengjian_test testSanitizer p=%d",p);
//    return 0;
}
@end

//
//  TestARCOne.m
//  TestBase
//
//  Created by chengjian on 2019/7/12.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestARCOne.h"
#import "TestArcTwo.h"
#import "TestARCThree.h"
#import "Person.h"
@interface TestARCOne ()

@end

@implementation TestARCOne

- (void)viewDidLoad {
//    Person *aa = [[[Person alloc] init] autorelease];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)testException {
    TestArcTwo *arc;
    TestARCThree *testARCThree = [[TestARCThree alloc] init];
    self.testARCThree = testARCThree;
    testARCThree.testARC = self;
    @try {
        NSLog(@"testException self.rc=%ld", (long)RC(self));
        arc = [[TestArcTwo alloc] initWithARCOne:self];
        NSLog(@"testException self.rc=%ld", (long)RC(self));
//        NSException *e = [NSException exceptionWithName:@"NSException" reason:@"test NSException" userInfo:nil];
//        @throw e;
    } @catch (NSException *exception) {
        NSLog(@"testException exception=%@", exception);
    }
    NSLog(@"testException arc=%@", arc);
}

- (void)dealloc
{
    NSLog(@"chengjian_test TestARCOne dealloc");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

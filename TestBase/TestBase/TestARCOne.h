//
//  TestARCOne.h
//  TestBase
//
//  Created by chengjian on 2019/7/12.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"
NS_ASSUME_NONNULL_BEGIN
@class TestARCThree;
@interface TestARCOne : UIViewController
@property (strong, nonatomic) TestARCThree *testARCThree;
- (void)registerWithRegistrar:(NSObject<SampleProtocolDelegate2> *)registrar;
- (void)testException;
@end

NS_ASSUME_NONNULL_END

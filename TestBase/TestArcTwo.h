//
//  TestArc.h
//  TestBase
//
//  Created by chengjian on 2021/11/28.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestMRC.h"
@class TestARCOne;
NS_ASSUME_NONNULL_BEGIN
@interface TestArcTwo : NSObject
- (instancetype)initWithARCOne:(nullable TestARCOne*)testARC;
- (void)testMockArc;
@property(strong,atomic) TestMRC *testMrcP;
@end

NS_ASSUME_NONNULL_END

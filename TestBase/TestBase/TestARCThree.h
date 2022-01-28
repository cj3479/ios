//
//  TestARCThree.h
//  TestBase
//
//  Created by chengjian on 2021/12/23.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class TestARCOne;
@interface TestARCThree : NSObject
@property (weak, nonatomic) TestARCOne *testARC;
@end

NS_ASSUME_NONNULL_END

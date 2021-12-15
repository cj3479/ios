//
//  TestSampleProtocolSub.h
//  TestBase
//
//  Created by chengjian on 2020/1/10.
//  Copyright © 2020 chengjian. All rights reserved.
//

#import "SampleProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestSampleProtocolSub : SampleProtocol
@property (nonatomic, readonly) NSString *testReadonly;
@end

NS_ASSUME_NONNULL_END

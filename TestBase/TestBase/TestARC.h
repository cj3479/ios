//
//  TestARC.h
//  TestBase
//
//  Created by chengjian on 2019/7/12.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface TestARC : UIViewController
- (void)registerWithRegistrar:(NSObject<SampleProtocolDelegate2> *)registrar;
@end

NS_ASSUME_NONNULL_END

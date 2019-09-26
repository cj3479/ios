//
//  TestRunLoop.h
//  TestBase
//
//  Created by chengjian on 2019/8/30.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestRunLoop : NSObject<NSPortDelegate>
-(void)testBlock;
-(void)testPort;
@end

NS_ASSUME_NONNULL_END

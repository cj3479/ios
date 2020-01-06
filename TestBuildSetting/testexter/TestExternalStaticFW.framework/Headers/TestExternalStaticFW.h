//
//  TestExternalStaticFW.h
//  TestExternalStaticFW
//
//  Created by chengjian on 2019/12/24.
//  Copyright © 2019 tencent. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
static int testESfw_aa = 20; // 局部符号
@interface TestExternalStaticFW : NSObject
-(void)testExternalStaticFWAA;
@end

NS_ASSUME_NONNULL_END

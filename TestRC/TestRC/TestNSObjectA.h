//
//  TestNSObject.h
//  TestRC
//
//  Created by chengjian on 2019/8/11.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TestMRC;
NS_ASSUME_NONNULL_BEGIN
extern NSString *const testConst1;
@interface TestNSObjectA : NSObject
@property (nonatomic,retain)TestMRC * testmrc;
@end

NS_ASSUME_NONNULL_END

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
extern NSString *const testConst;
@interface TestNSObject : NSObject
@property (nonatomic,retain)TestMRC * testmrc;
-(void) showlog;
@end

NS_ASSUME_NONNULL_END

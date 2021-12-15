//
//  MeemoDanmuWindowManager.h
//  TestBase
//
//  Created by chengjian on 2021/11/16.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface MeemoDanmuWindowManager : NSObject
+ (MeemoDanmuWindowManager *)sharedInstance;
- (void)show;
- (void)close;
@end

NS_ASSUME_NONNULL_END

//
//  MeemoFloatEntryWindowManager.h
//  TestBase
//
//  Created by chengjian on 2021/11/17.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MeemoFloatEntryWindowManager : NSObject
+ (MeemoFloatEntryWindowManager *)sharedInstance;
- (void)show;
- (void)fetchLiveStateAndShow:(bool) force;
- (void)refreshLiveStateIfNeeded;
@end

NS_ASSUME_NONNULL_END

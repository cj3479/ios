//
//  FlutterEmbedderKeyResponder.h
//  TestBase
//
//  Created by chengjian on 2021/12/15.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^FlutterSendKeyEvent)(void);

@interface FlutterEmbedderKeyResponder : NSObject
- (nonnull instancetype)initWithSendEvent:(nonnull FlutterSendKeyEvent)sendEvent;
@end

NS_ASSUME_NONNULL_END

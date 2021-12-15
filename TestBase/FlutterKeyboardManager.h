//
//  FlutterKeyboardManager.h
//  TestBase
//
//  Created by chengjian on 2021/12/15.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlutterEmbedderKeyResponder.h"
NS_ASSUME_NONNULL_BEGIN

@interface FlutterKeyboardManager : NSObject
- (void)addPrimaryResponder:(nonnull FlutterEmbedderKeyResponder *)responder;
@end

NS_ASSUME_NONNULL_END

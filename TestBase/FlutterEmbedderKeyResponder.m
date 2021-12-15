//
//  FlutterEmbedderKeyResponder.m
//  TestBase
//
//  Created by chengjian on 2021/12/15.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "FlutterEmbedderKeyResponder.h"
@interface FlutterEmbedderKeyResponder ()
@property(nonatomic) FlutterSendKeyEvent sendEvent;
@end
@implementation FlutterEmbedderKeyResponder
- (nonnull instancetype)initWithSendEvent:(FlutterSendKeyEvent)sendEvent {
  self = [super init];
  if (self != nil) {
//    _sendEvent = [sendEvent copy];
      _sendEvent = sendEvent;
  }
  return self;
}
@end

//
//  FlutterEmbedderKeyResponder.m
//  TestBase
//
//  Created by chengjian on 2021/12/15.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "FlutterEmbedderKeyResponder.h"
@interface FlutterEmbedderKeyResponder ()
@property(nonatomic,copy) FlutterSendKeyEvent sendEvent;
@end
@implementation FlutterEmbedderKeyResponder
- (nonnull instancetype)initWithSendEvent:(FlutterSendKeyEvent)sendEvent {
  self = [super init];
  if (self != nil) {
    _sendEvent = [sendEvent copy];
//    _sendEvent = sendEvent;
//    NSLog(@"chengjian_test FlutterEmbedderKeyResponder initWithSendEvent _sendEvent.retainCount=%lu _sendEvent.rc=%lu", (unsigned long)[_sendEvent retainCount], RC(_sendEvent));
      NSLog(@"chengjian_test FlutterEmbedderKeyResponder initWithSendEvent _sendEvent.rc=%lu", RC(_sendEvent));
  }
  return self;
}

- (void)dealloc
{
//    NSLog(@"chengjian_test FlutterEmbedderKeyResponder dealloc _sendEvent.retainCount=%lu _sendEvent.rc=%lu", (unsigned long)[_sendEvent retainCount], RC(_sendEvent));
    NSLog(@"chengjian_test FlutterEmbedderKeyResponder dealloc _sendEvent.rc=%lu", RC(_sendEvent));
//    [_sendEvent release];
//    [super dealloc];
}
@end

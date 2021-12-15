//
//  FlutterKeyboardManager.m
//  TestBase
//
//  Created by chengjian on 2021/12/15.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "FlutterKeyboardManager.h"
#import "FlutterEmbedderKeyResponder.h"
@interface FlutterKeyboardManager ()
@property(nonatomic,strong) NSMutableArray<FlutterEmbedderKeyResponder *> *primaryResponders;
@end
@implementation FlutterKeyboardManager
- (void)addPrimaryResponder:(nonnull FlutterEmbedderKeyResponder *)responder {
  [_primaryResponders addObject:responder];
}
//@property(nonatomic, retain) NSMutableArray<id<FlutterKeyPrimaryResponder>>* primaryResponders;
@end

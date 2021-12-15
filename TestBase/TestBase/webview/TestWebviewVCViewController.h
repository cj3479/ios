//
//  TestWebviewVCViewController.h
//  TestBase
//
//  Created by chengjian on 2020/3/3.
//  Copyright © 2020 chengjian. All rights reserved.
//

#import "TestViewController.h"
#import "FlutterKeyboardManager.h"
#import <WebKit/WKWebView.h>
typedef void(^MyBlk)(void);
@class TestViewController;
@interface TestWebviewVCViewController : UIViewController
@property (nonatomic, copy) MyBlk blk;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, weak) TestViewController *testViewController;
@property (nonatomic, strong) WKWebView *webview;
@property(nonatomic, strong) FlutterKeyboardManager* keyboardManager;
-(void)testBlock;
@end


//
//  TestWebviewVCViewController.m
//  TestBase
//
//  Created by chengjian on 2020/3/3.
//  Copyright © 2020 chengjian. All rights reserved.
//

#import "TestWebviewVCViewController.h"
#import <WebKit/WebKit.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "CustomObject.h"
#import <mach/mach.h>
typedef NS_ENUM (NSInteger, KBSubscribeObjectType) {
    kKBSubscribeObjectTypeMedia,
    kKBSubscribeObjectTypeTag,
    kKBSubscribeObjectTypeV,
    kKBSubscribeObjectTypeColumn,
    kKBSubscribeObjectTypeUnknow = 999
};
@interface TestWebviewVCViewController ()<WKNavigationDelegate>
//@property(nonatomic,strong) WKWebView *webview;
//@property(nonatomic, assign) KBSubscribeObjectType subscribeState;
@end

@implementation TestWebviewVCViewController
{
//    NSMutableSet *objs;
    NSObject *objc;
}
- (IBAction)testBtnClick:(id)sender {
    NSLog(@"chengjian_test testBtnClick");
}

- (UIView *)splashScreenFromXib:(NSString *)name {
    NSArray *objects = nil;
    @try {
        objects = [[NSBundle mainBundle] loadNibNamed:name owner:self options:nil];
    } @catch (NSException *exception) {
        NSLog(@"MeemoSdk splashScreenFromXib exception=%@", exception);
        return nil;
    }
    if ([objects count] != 0) {
        UIView *view = [objects objectAtIndex:0];
        return view;
    }
    NSLog(@"MeemoSdk splashScreenFromXib objects=%@", objects);
    return nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.name = @"fff";
//    self.keyboardManager = [[FlutterKeyboardManager alloc] init];
//    FlutterSendKeyEvent sendEvent =
//        ^{
//        NSLog(@"chenjgian_test viewDidLoad self=%@", self);
//    };
//    FlutterEmbedderKeyResponder *responder = [[FlutterEmbedderKeyResponder alloc] initWithSendEvent:sendEvent];
//    UIView *uiView = [self splashScreenFromXib:@"testwebviewaaaaa"];
//    self.view = uiView;
//    NSLog(@"chenjgian_test viewDidLoad uiView=%@", uiView);
//    [self.keyboardManager addPrimaryResponder:responder];
//    __weak typeof(self) weakSelf = self;
//    self.blk = ^{
//        NSLog(@"chenjgian_test self=%@", self->objc);
////        NSLog(@"chenjgian_test name=%@,weakSelf=%@", self.name,weakSelf);
////        NSLog(@"chenjgian_test name=%@,weakSelf=%@", weakSelf.name,weakSelf);
////        __strong typeof(self) strongSelf = weakSelf;
////        NSLog(@"chenjgian_test block name=%@,weakSelf=%@", weakSelf.name, weakSelf);
////        NSLog(@"chenjgian_test name=%@,weakSelf=%@", weakSelf.name,weakSelf);
////        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//////            NSLog(@"chenjgian_test name=%@,weakSelf=%@", strongSelf.name,weakSelf);
////            NSLog(@"chenjgian_test name=%@,weakSelf=%@", weakSelf.name,weakSelf);
////        });
//    };

//        self.blk = ^{
//            NSLog(@"chengjian_test %p", self); //因为实例变量的访问等价于self->_myAnimal,也等价于(*self)._myAnimal;所以这里会导致block强引用self.
//        };
//        self.blk();
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"chenjgian_test dispatch_after name=%@,weakSelf=%@", weakSelf.name, weakSelf);
//        if (nil != weakSelf) {
//            weakSelf.blk();
//        }
//        //            NSLog(@"chenjgian_test name=%@,weakSelf=%@", strongSelf.name,weakSelf);
////                NSLog(@"chenjgian_test name=%@,weakSelf=%@", weakSelf.name,weakSelf);
//    });
//    self.blk();
//    self.testViewController = [[TestViewController alloc] init];
//    objs = [NSMutableSet new];
//    for (int i = 0; i < 4000; ++i) {
//        CustomObject *obj = [CustomObject new];
//        [objs addObject:obj];
//    }
//    NSString *aa = @"ddff";
//    NSString *bb;
//    NSLog(@"chengjian %d",[aa isEqualToString:@"ddff"]);
////    NSLog(@"chengjian %@",[aa stringByAppendingString:bb]);
//    NSLog(@"chengjian %@",[NSString stringWithFormat:@"%ld_%@",(long)kKBSubscribeObjectTypeColumn,bb]);
//
//
//    self.webview = [[WKWebView alloc]init];
//    self.webview.backgroundColor=[UIColor blueColor];
//    self.webview.frame = self.view.bounds;
//    self.webview.navigationDelegate = self;
//    NSURL *url = [NSURL URLWithString:@"http://www.cn357.com/upload/batchimg/org/248/o83340601.jpg"];
//    NSURL *url = [NSURL URLWithString:@"https://juejin.im/entry/58aacac28fd9c50067f38d1d"];
//    NSURL *url = [NSURL URLWithString:@"https://www.jianshu.com/p/196dda3a01d3"];
//    https:
//    NSURL *url = [NSURL URLWithString:@"https://meemo.pro/dev_test/auth.html"];
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com"];
//    NSString *path = [[NSBundle mainBundle] bundlePath];
//    NSURL *baseURL = [NSURL fileURLWithPath:path];
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"js" ofType:@"html"];
//    NSURL* url = [NSURL  fileURLWithPath:path];//创建URL
//    NSString * htmlPath = [[NSBundle mainBundle] pathForResource:@"js"
//                                                          ofType:@"html"];
//    NSURL* url = [NSURL  fileURLWithPath:htmlPath];//创建URL
//    NSString * htmlCont = [NSString stringWithContentsOfFile:htmlPath
//                                                    encoding:NSUTF8StringEncoding
//                                                       error:nil];
//    NSString *htmlCont = [NSString stringWithContentsOfFile:url
//                                                    encoding:NSUTF8StringEncodingView
//                                                       error:nil];
//    [self.webview loadHTMLString:htmlCont baseURL:baseURL];
//    NSURLRequest* request = [NSURLRequest requestWithURL:url];//创建NSURLRequest
////    [webView loadRequest:request];//加载
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    // 加载网页
    [self.webview loadRequest:request];
    [self.view addSubview:self.webview];
    // Do any additional setup after loading the view.
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self dismissViewControllerAnimated:false completion:nil]
////        [self.webview stringByEvaluatingJavaScriptFromString:@"callJS()"];
////        [self.webview evaluateJavaScript:@"callJS()" completionHandler:^(NSString* result, NSError * _Nullable error) {
////            NSLog(@"chengjian_test result=%@",result);
////        }];
////        JSContext *context=[self.webview valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
////        [context evaluateScript:@"callJS()"];
//    });
//    self.view.backgroundColor = UIColor.redColor;
}

- (void)testBlock {
    self.blk = ^{
        NSLog(@"chenjgian_test testBlock objc=%@", self->objc);
    };
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    /*官方解释：决定是否允许或取消导航（继续加载）。
     您的委托可以立即调用块或保存块并在稍后时间异步调用它。
     可以理解成就是比如，一个想要加载URL前，想做点其他事时候才调用。

     实际应用中，比如
     1.通过一个判断一个合法URL，是否需要拉起支付宝app
     2.需求：判断加载的url包含XXXX字符，全部屏蔽掉，并跳转到相应的界面
     下面的其他代理方法都可以铺抓到加载的URL，为什么要在此方法开始做处理。
     原因，该代理方法，就是要在webview加载前拦截下来，第一时间处理，节省内存等。
     */
    NSLog(@"chengjian_test navigationType=%ld", (long)navigationAction.navigationType);
    NSLog(@"chengjian_test navigationType=%ld", (long)WKNavigationTypeLinkActivated);
    NSLog(@"chengjian_test 捕抓当前页面来源的url=%@", webView.URL.absoluteString);
    NSLog(@"chengjian_test 捕抓当前页面的请求URL=%@", navigationAction.request.URL);
//    WKNavigationActionPolicy Cancel = WKNavigationActionPolicyCancel;//    取消导航
//
//    WKNavigationActionPolicy Allow = WKNavigationActionPolicyAllow;//    允许导航
//    NSLog(@"11111");
//    decisionHandler(Allow);
//    [super webView:decidePolicyForNavigationAction:navigationAction decisionHandler:decisionHandler];
//    decisionHandler(WKNavigationActionPolicyAllow);
    decisionHandler(WKNavigationActionPolicyAllow + 2);
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler {
    /*官方解释：
     决定是否在其响应已知后允许导航或取消导航。
     您的委托可以立即调用块或保存块并在稍后时间异步调用它。
     */
//    WKNavigationActionPolicy Cancel = WKNavigationActionPolicyCancel;
//    WKNavigationResponsePolicy allow = WKNavigationResponsePolicyAllow;
    NSLog(@"chengjian_test 在收到响应后，决定是否跳转 333333");
//    decisionHandler(WKNavigationResponsePolicyAllow);
    if ([navigationResponse.response.URL.absoluteString containsString:@"api.instagram.com"]) {
        decisionHandler(WKNavigationResponsePolicyCancel);
        NSURL *url = [NSURL URLWithString:navigationResponse.response.URL.absoluteString];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webview loadRequest:request];
    } else {
        decisionHandler(WKNavigationResponsePolicyAllow);
    }
}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(null_unspecified WKNavigation *)navigation {
    NSLog(@"chengjian_test 22222222当Web内容开始在Web视图中加载时调用");
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    NSLog(@"chengjian_test 44444当Web视图开始接收Web内容时调用");
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    NSLog(@"chengjian_test 55555导航完成时调用。");
}

- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    NSLog(@"chengjian_test 加载错误时候才调用，错误原因=%@", error);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.view removeFromSuperview];
}

- (void)dealloc
{
    NSLog(@"chenjgian_test TestWebviewVCViewController dealloc");
}

//- (instancetype)retain{
//    return [super retain];
//}
@end

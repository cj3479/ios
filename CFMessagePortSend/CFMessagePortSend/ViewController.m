//
//  TestViewControllerAA.m
//  CFMessagePortSend
//
//  Created by chengjian on 2019/9/24.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestViewControllerAA.h"
#define MACH_PORT_REMOTE    "com.wangzz.demo"
@interface TestViewControllerAA ()

@end

@implementation TestViewControllerAA

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(0,100, 100, 100);
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sendSocket:)];
    [btn setTitle:@"send" forState:UIControlStateNormal];
    [btn setTitle:@"sended" forState:UIControlStateHighlighted];
    [btn addGestureRecognizer:tapGesture];
    self.view.backgroundColor = UIColor.blueColor;
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}
-(void)sendSocket:(UITapGestureRecognizer *)tap{
    // 生成Remote port
    CFMessagePortRef bRemote = CFMessagePortCreateRemote(kCFAllocatorDefault, CFSTR(MACH_PORT_REMOTE));
    if (nil == bRemote) {
        NSLog(@"chengjian_socket send bRemote create failed");
        return;
    }
    
    // 构建发送数据（string）
    NSString   *msg = [NSString stringWithFormat:@"%@",@"test socket"];
    NSLog(@"chengjian_socket send msg is :%@",msg);
    const char *message = [msg UTF8String];
    CFDataRef data,recvData = nil;
    data = CFDataCreate(NULL, (UInt8 *)message, strlen(message));
    
    // 执行发送操作
    CFMessagePortSendRequest(bRemote, 100, data, 0, 100 , kCFRunLoopDefaultMode, &recvData);
    NSLog(@"chengjian_socket send waitting 1");
    if (nil == recvData) {
        NSLog(@"chengjian_socket send recvData date is nil.");
        CFRelease(data);
        CFMessagePortInvalidate(bRemote);
        CFRelease(bRemote);
        return ;
    }
    NSLog(@"chengjian_socket send  waitting 2");
    // 解析返回数据
    const UInt8  * recvedMsg = CFDataGetBytePtr(recvData);
    if (nil == recvedMsg) {
        NSLog(@"chengjian_socket send receive date err.");
        CFRelease(data);
        CFMessagePortInvalidate(bRemote);
        CFRelease(bRemote);
        return ;
    }

    NSString  *strMsg = [NSString stringWithCString:(char *)recvedMsg encoding:NSUTF8StringEncoding];
//    NSLog(@"%@",strMsg);
    
    CFRelease(data);
    CFMessagePortInvalidate(bRemote);
    CFRelease(bRemote);
    CFRelease(recvData);
    NSLog(@"chengjian_socket sendstrMsg=%@",strMsg);
}

@end

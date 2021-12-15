//
//  NextViewController.m
//  TestBase
//
//  Created by chengjian on 2019/6/3.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "NextViewController.h"
@implementation NextViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.labels.text=@"startinghhhh";
    [self.labels sizeToFit];
    UILabel *label =UILabel.alloc.init;
    //这一句创建了一个静态文本控件，未指定内容、大小和位置
    
    
    
    label.text=@"hello world ddd";
//    label.opaque = NO;
    label.backgroundColor = [UIColor redColor];
    //"@"的作用是把一个c风格的字符串"hello world"包装成一个NSString对象
    [label sizeToFit];
    CGPoint tempCenter ;
    tempCenter.x=150;
    tempCenter.y=10;
    label.center = tempCenter;
    [self.view addSubview:label];
    self.view.backgroundColor = [UIColor colorWithRed:100 green:100 blue:0 alpha:0];
    //    self.testbtn.currentTitle =@"1111";
    // Do any additional setup after loading the view from its nib.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"NextViewController viewDidAppear");
}
- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"NextViewController viewDidDisappear");
}
//- (IBAction)twobutton:(id)sender {
//    NSLog(@"clickdddddddddddd");
//    self.labels.text=@"clicking";
//}
- (IBAction)clickOn:(id)sender {
    NSLog(@"clickdddddddddddd sender=%@",sender);
    self.labels.text=@"clicking";
}
@end

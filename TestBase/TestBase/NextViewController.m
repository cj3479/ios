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

//- (IBAction)twobutton:(id)sender {
//    NSLog(@"clickdddddddddddd");
//    self.labels.text=@"clicking";
//}
- (IBAction)clickOn:(id)sender {
    NSLog(@"clickdddddddddddd sender=%@",sender);
    self.labels.text=@"clicking";
}
@end

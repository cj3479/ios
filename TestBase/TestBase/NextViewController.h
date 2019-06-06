//
//  NextViewController.h
//  TestBase
//
//  Created by chengjian on 2019/6/3.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NextViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labels;
@property (weak, nonatomic) IBOutlet UIButton *testbtn;
- (IBAction)clickOn:(id)sender;

@end

NS_ASSUME_NONNULL_END

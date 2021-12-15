//
//  TestChildViewController.h
//  TestBase
//
//  Created by chengjian on 2019/11/17.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChildViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface TestChildViewController : UIViewController
@property (nonatomic, retain) UIScrollView *headScrollView;
@property (nonatomic, retain) NSArray *headArray;
@property (nonatomic, retain) ChildViewController *firstVC;
@property (nonatomic, retain) ChildViewController *currentVC;
@property (nonatomic, retain) ChildViewController *secondVC;
@property (nonatomic, retain) ChildViewController *thirdVC;
@end

NS_ASSUME_NONNULL_END

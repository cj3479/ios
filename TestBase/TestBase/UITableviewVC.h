//
//  UITableviewVC.h
//  TestBase
//
//  Created by chengjian on 2019/6/7.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface UITableviewVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *datas;
@end

NS_ASSUME_NONNULL_END

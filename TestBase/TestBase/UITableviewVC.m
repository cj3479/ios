//
//  UITableviewVC.m
//  TestBase
//
//  Created by chengjian on 2019/6/7.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "UITableviewVC.h"
#import "TestTableViewCell.h"
static int m=1;
@implementation UITableviewVC
- (void)viewDidLoad{
    _datas = [NSMutableArray array];
    for(int i=0;i<20;i++)
    {
        [_datas addObject:[NSString stringWithFormat:@"这是第%d个cell",i]];
    }
    // 创建UItableView，style选择Grouped或Plain，这里我们以Grouped为例
//    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewCellStyleDefault];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds
                                              style:UITableViewStylePlain];
    // 声明 tableView 的代理和数据源
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
//    self.tableView.prefetchDataSource = self;
    _tableView.estimatedRowHeight = 0;
    [self.view addSubview:self.tableView];
    NSLog(@" UITableviewVC viewDidLoad");
    
}

#pragma mark - kvo的回调方法(系统提供的回调方法)
//keyPath:属性名称
//object:被观察的对象
//change:变化前后的值都存储在change字典中
//context:注册观察者的时候,context传递过来的值
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    id oldName = [change objectForKey:NSKeyValueChangeOldKey];
    NSLog(@"oldName----------%@",oldName);
    id newName = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"newName-----------%@",newName);
    //当界面要消失的时候,移除kvo
    //    [object removeObserver:self forKeyPath:@"name"];
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"chengjian_test willDisplayCell");
}

// 设置每个 Cell
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    // 创建一个cellID，用于cell的重用
    NSString *cellID = @"cellID";
//    NSString *cellID = [@"cellID" stringByAppendingFormat:@"%ld",indexPath.row];
    // 从tableview的重用池里通过cellID取一个cell
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    NSLog(@"chengjian_test getview ,cell=%@,row=%ld",cell,indexPath.row);
    if (cell == nil) {
        // 如果tableview的重用池中没有取到，就创建一个新的cell，style为Value2，并用cellID对其进行标记。
        cell = [[TestTableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellID];
    }
    // 设置 cell 的标题
//    cell.textLabel.text = [NSString stringWithFormat:@"这是第%li个cell", (long)indexPath.row];
    cell.textLabel.text = _datas[indexPath.row];
    // 设置 cell 的副标题
//    cell.detailTextLabel.text = @"副标题";
    NSLog(@"chengjian_test getview selection=%ld,row=%d，,cell=%@", (long)indexPath.section,indexPath.row,cell);
    return cell;
}
// tableView 中 Section 的个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    m++;
    NSLog(@"numberOfSectionsInTableView 111111 %d",m);
    return 1;
}
// 每个 Section 中的 Cell 个数
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"numberOfRowsInSection 111111 %ld",section);
    return _datas.count;
}

#pragma mark - UITableViewDelegate
// 设置 section 的 header 文字
//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return [NSString stringWithFormat:@"header-%li", (long)section];
//}
// 设置 section 的 footer 文字
//-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
//    return [NSString stringWithFormat:@"footer-%li", (long)section];
//}

//// 设置 section 的 header 高度
//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    return 30;
//}
//// 设置 section 的 footer 高度
//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
//    return 0;
//}
// 设置 cell 的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"chengjian_test heightForRowAtIndexPath %ld", indexPath.row);
    return 80;
}
//// 自定义 section 的 header
//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 10)];
//    headerView.backgroundColor = [UIColor redColor];
//    return headerView;
//}
//// 自定义 section 的 footer
//-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
//    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 10)];
//    footerView.backgroundColor = [UIColor orangeColor];
//    return footerView;
//}
// 选中了 cell 时触发
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"选中了第%li个cell,size=%lu", (long)indexPath.row,(unsigned long)_datas.count);
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    [cell addObserver:self forKeyPath:@"frame" options:NSKeyValueObservingOptionOld context:nil];
//    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
//    NSMutableArray *oldDataSource = [NSMutableArray arrayWithArray:_datas];
//    [_datas removeObjectAtIndex:indexPath.row];
//    [_datas addObject:[NSString stringWithFormat:@"这是第%d个cell",100]];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
//    [_datas removeObjectAtIndex:1];
//    [oldDataSource removeObjectAtIndex:2];
//    NSLog(@"after,old.size=%lu,data.size=%d,old=%p,data=%p", (unsigned long)oldDataSource.count,_datas.count,oldDataSource,_datas);
//    _datas = [NSMutableArray arrayWithArray:oldDataSource];
//    NSLog(@"after,old.size=%lu,data.size=%d,old=%p,data=%p", (unsigned long)oldDataSource.count,_datas.count,oldDataSource,_datas);
//    [self.tableView indexPathsForVisibleRows];
    //操作1 删除
//    [_datas removeObjectAtIndex:indexPath.row];
//    [self.tableView reloadData];
//    [self.tableView beginUpdates];
//    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:indexPath.row inSection:indexPath.section]] withRowAnimation:UITableViewRowAnimationAutomatic];
    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
//    dispatch_async(dispatch_get_main_queue(), ^{
//        NSLog(@"11111111");
//        [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
//    });
//    [UIView performWithoutAnimation:^{
//        NSLog(@"11111111");
//        [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
//    }];
    NSLog(@"22222");
//     [self.tableView reloadData];
//    [self.tableView endUpdates];

//    //操作2 删除
//    [_datas removeObjectAtIndex:3];
//    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:1 inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
//    //操作2 插入
//    [_datas insertObject:@"这是第3个cell" atIndex:2];
//    [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:2 inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
    
    //操作1 删除
//    [_datas removeObjectAtIndex:0];
    
    //操作2 删除
//    [_datas removeObjectAtIndex:3];
    //操作2 插入
//    [_datas insertObject:@"这是第3个cell" atIndex:2];
//    [self.tableView beginUpdates];
//    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:0 inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
//    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:3 inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
//    [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:2 inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
//    [self.tableView endUpdates];
//    [UIView animateWithDuration:10 animations:^{
//        NSLog(@"chengjian_ani");
//        self.tableView.backgroundColor = UIColor.redColor;
//    } completion:^(BOOL finished) {
//         NSLog(@"chengjian_ani end");
//    }];
    
//    [self.tableView beginUpdates];
//    [self.tableView endUpdates];
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    [_datas removeObjectAtIndex:indexPath.row];
//    [_datas removeObjectAtIndex:(indexPath.row+1)];
//
//                // 刷新
////       [self.tableView reloadData];
//    [self.tableView beginUpdates];
//    [self.tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:(indexPath.row+1) inSection:0]] withRowAnimation:UITableViewRowAnimationFade];//删除对应数据的cell
//    [self.tableView endUpdates];
//     [self.tableView reloadData];
//        NSArray* indexPaths = [_tableView indexPathsForVisibleRows];
//        if (!indexPaths.count) {
//            return;
//        }
//
//        NSIndexPath *lastIndexPath = (NSIndexPath*)(indexPaths.lastObject);
//        NSInteger lastIndex = lastIndexPath.row;
//
//        for (int i=0; i<indexPaths.count; i++) {
//            NSIndexPath *indexPath = (NSIndexPath*)indexPaths[i];
//            NSInteger index = indexPath.row;
//            NSInteger sections = [_tableView numberOfSections];
//            if (indexPath.section >= sections)//保护一下,避免数组越界
//            {
//                continue;
//            }
//            else
//            {
//                NSInteger rows = [_tableView numberOfRowsInSection:indexPath.section];
//                if (index >= rows) {
//                    continue;
//                }
//            }
    
//            id obj = CZ_DicGetObjectAtIndex(dataSource, index);
//            if (CZ_isKindOfClass(obj, [ReadInJoyChannelAd class])) {
//                NSInteger sections = [_tableView numberOfSections];
//                if (indexPath.section > = sections)//保护一下,避免数组越界
//                {
//                    continue;
//                }
//                else
//                {
//                    NSInteger rows = [_tableView numberOfRowsInSection:indexPath.section];
//                    if (index > = rows) {
//                        continue;
//                    }
//                }
//
//                CGRect rectInTableView = [_tableView rectForRowAtIndexPath:indexPath];
//                CGRect rectInWindow = [_tableView convertRect:rectInTableView toView:[UIApplication sharedApplication].keyWindow];
//                UITableViewCell *cell = [_tableView cellForRowAtIndexPath:indexPath];
//                cell.accessibilityValue = NSStringFromCGRect(rectInWindow);
//
//                dispatch_async(dispatch_get_main_queue(), ^{
//                    [cell setNeedsLayout];
//                    [cell layoutIfNeeded];
//                });
//            }
//        }
}

//// 设置 cell 是否允许左滑
//-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    return true;
//}
// 设置默认的左滑按钮的title
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    return @"按钮钮钮";
}
// 点击左滑出现的按钮时触发
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"点击左滑出现的按钮时触发");
}
// 左滑结束时调用(只对默认的左滑按钮有效，自定义按钮时这个方法无效)
-(void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"左滑结束");
}
// 自定义左滑cell时的按钮和触发方法
//- (nullable NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
//    [_datas removeObjectAtIndex:indexPath.row];
//    NSLog(@"点击了 位置 %ld,%ld",indexPath.section,indexPath.row);
//    // 创建第一个按钮和触发事件
//    UITableViewRowAction *cellActionA = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"按钮-1" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath){
//        // 在此写点击按钮时的触发事件
//        // ......
//        NSLog(@"点击了 按钮-1");
//    }];
//    // 定义按钮的颜色
//    cellActionA.backgroundColor = [UIColor greenColor];
//    
//    // 创建第二个按钮和触发事件
//    UITableViewRowAction *cellActionB = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"按钮-2" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath){
//        // 在此写点击按钮时的触发事件
//        // ......
//    }];
//    // 注意这里返回的是一个按钮组，即使只定义了一个按钮也要返回一个组
//    return @[cellActionA, cellActionB];
//}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
//    NSArray* indexPaths = [_tableView indexPathsForVisibleRows];
//    int a = [self.tableView numberOfSections];
//    int b = [self.tableView numberOfRowsInSection:0];
    NSLog(@"scrollViewDidEndDecelerating");
}
//- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
////    NSLog(@"scrollViewDidScroll scrollView");
//    NSLog(@"runloop scrollView. mode %@",[NSRunLoop currentRunLoop].currentMode);
//    [self performSelector:@selector(actionTest) withObject:nil afterDelay:1 inModes:@[NSDefaultRunLoopMode]];
//}
//- (void)actionTest{
//    NSLog(@"runloop actionTest. mode %@",[NSRunLoop currentRunLoop].currentMode);
//    sleep(1);
//}
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView{
    NSLog(@"%s",__FUNCTION__);
}
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
     NSLog(@"%s",__FUNCTION__);
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"%s,%@", __FUNCTION__, decelerate ?@"YES": @"NO");
}
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    NSLog(@"%s,%d,%d",__FUNCTION__,targetContentOffset->x,targetContentOffset->y);
    //targetContentOffset->y = 100;
}
//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
//    NSLog(@"%s,%@",__FUNCTION__,indexPath);
////    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
//}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"chengjian table touchesBegan....");
    // 选其一即可
    [super touchesBegan:touches withEvent:event];
//    [[self nextResponder] touchesBegan:touches withEvent:event];
}
@end

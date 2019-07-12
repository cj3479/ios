//
//  UITableviewVC.m
//  TestBase
//
//  Created by chengjian on 2019/6/7.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "UITableviewVC.h"
static int m=1;
@implementation UITableviewVC
- (void)viewDidLoad{
    // 创建UItableView，style选择Grouped或Plain，这里我们以Grouped为例
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    // 声明 tableView 的代理和数据源
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.prefetchDataSource = self;
    [self.view addSubview:self.tableView];
    NSLog(@" UITableviewVC viewDidLoad");
}
// 设置每个 Cell
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    // 创建一个cellID，用于cell的重用
    NSString *cellID = @"cellID";
    // 从tableview的重用池里通过cellID取一个cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        // 如果tableview的重用池中没有取到，就创建一个新的cell，style为Value2，并用cellID对其进行标记。
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellID];
    }
    // 设置 cell 的标题
    cell.textLabel.text = [NSString stringWithFormat:@"这是第%li个cell", (long)indexPath.row];
    // 设置 cell 的副标题
    cell.detailTextLabel.text = @"副标题";
    NSLog(@"getview selection=%d,row=%d，,cell=%@", indexPath.section,indexPath.row,cell);
    return cell;
}
// tableView 中 Section 的个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    m++;
    NSLog(@"numberOfSectionsInTableView 111111 %d",m);
    return 3;
}
// 每个 Section 中的 Cell 个数
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"numberOfRowsInSection 111111 %ld",section);
    return 18;
}

#pragma mark - UITableViewDelegate
// 设置 section 的 header 文字
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"header-%li", (long)section];
}
// 设置 section 的 footer 文字
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"footer-%li", (long)section];
}

// 设置 section 的 header 高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30;
}
// 设置 section 的 footer 高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}
// 设置 cell 的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
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
    NSLog(@"选中了第%li个cell", (long)indexPath.row);
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
        NSArray* indexPaths = [_tableView indexPathsForVisibleRows];
        if (!indexPaths.count) {
            return;
        }
        
        NSIndexPath *lastIndexPath = (NSIndexPath*)(indexPaths.lastObject);
        NSInteger lastIndex = lastIndexPath.row;
    
        for (int i=0; i<indexPaths.count; i++) {
            NSIndexPath *indexPath = (NSIndexPath*)indexPaths[i];
            NSInteger index = indexPath.row;
            NSInteger sections = [_tableView numberOfSections];
            if (indexPath.section >= sections)//保护一下,避免数组越界
            {
                continue;
            }
            else
            {
                NSInteger rows = [_tableView numberOfRowsInSection:indexPath.section];
                if (index >= rows) {
                    continue;
                }
            }
            
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
        }
}

// 设置 cell 是否允许左滑
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return true;
}
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
- (nullable NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 创建第一个按钮和触发事件
    UITableViewRowAction *cellActionA = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"按钮-1" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath){
        // 在此写点击按钮时的触发事件
        // ......
        NSLog(@"点击了 按钮-1");
    }];
    // 定义按钮的颜色
    cellActionA.backgroundColor = [UIColor greenColor];
    
    // 创建第二个按钮和触发事件
    UITableViewRowAction *cellActionB = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"按钮-2" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath){
        // 在此写点击按钮时的触发事件
        // ......
    }];
    // 注意这里返回的是一个按钮组，即使只定义了一个按钮也要返回一个组
    return @[cellActionA, cellActionB];
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSArray* indexPaths = [_tableView indexPathsForVisibleRows];
    int a = [self.tableView numberOfSections];
    int b = [self.tableView numberOfRowsInSection:0];
    NSLog(@"scrollViewDidEndDecelerating");
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    NSLog(@"scrollViewDidScroll scrollView");
}
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
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
//    NSLog(@"%s,%@",__FUNCTION__,indexPath);
//    NSLog(@"%@:%@",[self class],NSStringFromSelector(_cmd));
}
@end

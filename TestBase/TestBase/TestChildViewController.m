//
//  TestChildViewController.m
//  TestBase
//
//  Created by chengjian on 2019/11/17.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestChildViewController.h"
#import "ChildViewController.h"
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
@interface TestChildViewController()

@end

@implementation TestChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];

    self.title = @"仿网易导航栏";

    self.headArray = @[@"11",@"22",@"33"];

    [self addHeadView];

    [self addChildVC];
    // Do any additional setup after loading the view.
}
- (void)addHeadView {

    // ? 不加文字scrollview 文字不显示

    self.automaticallyAdjustsScrollViewInsets = NO;

    

    self.headScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 64,SCREEN_WIDTH, 40)];

    self.headScrollView.backgroundColor = [UIColor purpleColor];

    self.headScrollView.showsVerticalScrollIndicator = NO;

    self.headScrollView.contentSize = CGSizeMake(560, 0);

    self.headScrollView.bounces = NO;

    self.headScrollView.pagingEnabled = YES;

    [self.view addSubview:self.headScrollView];

    for (int i = 0; i < [self.headArray count]; i++) {

        

        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];

        button.frame = CGRectMake(0 + i*80, 0, 80, 40);

        [button setTitle:[self.headArray objectAtIndex:i] forState:UIControlStateNormal];

        button.tag = i + 100;

        [button addTarget:self action:@selector(didClickHeadButtonAction:) forControlEvents:UIControlEventTouchUpInside];

        [self.headScrollView addSubview:button];

    }

}

 

-(void)addChildVC {

    self.firstVC = [[ChildViewController alloc] init];

    self.firstVC.view.backgroundColor = [UIColor redColor];

    [self.firstVC.view setFrame:CGRectMake(0, 104, SCREEN_WIDTH, SCREEN_HEIGHT-104)];

    [self addChildViewController:_firstVC];

    //addChildViewController 会调用 [child willMoveToParentViewController:self] 方法，但是不会调用 didMoveToParentViewController:方法，官方建议显示调用

    [self.firstVC didMoveToParentViewController:self];

    //  默认,第一个视图(你会发现,全程就这一个用了addSubview)

    [self.view addSubview:self.firstVC.view];

    self.currentVC = self.firstVC;

   

    self.secondVC = [[ChildViewController alloc] init];

    self.secondVC.view.backgroundColor = [UIColor greenColor];

    [self.secondVC.view setFrame:CGRectMake(0, 104, SCREEN_WIDTH, SCREEN_HEIGHT-104)];

    

    self.thirdVC = [[ChildViewController alloc] init];

    self.thirdVC.view.backgroundColor = [UIColor blueColor];

    [self.thirdVC.view setFrame:CGRectMake(0, 104, SCREEN_WIDTH, SCREEN_HEIGHT-104)];

}

 

-(void)didClickHeadButtonAction:(UIButton *)button {

    //  展示2个,其余一样,自行补全噢

    switch (button.tag) {

        case 100:

            [self replaceController:self.currentVC newController:self.firstVC];

            break;

        case 101:

            [self replaceController:self.currentVC newController:self.secondVC];

            break;

        case 102:

            [self replaceController:self.currentVC newController:self.thirdVC];

            break;

        default:

            break;

    }

}

 

//  切换各个标签内容

-(void)replaceController:(UIViewController *)oldController newController:(UIViewController *)newController {

    /**

     *            着重介绍一下它

     *  transitionFromViewController:toViewController:duration:options:animations:completion:

     *  fromViewController      当前显示在父视图控制器中的子视图控制器

     *  toViewController        将要显示的姿势图控制器

     *  duration                动画时间(这个属性,old friend 了 O(∩_∩)O)

     *  options                 动画效果(渐变,从下往上等等,具体查看API)

     *  animations              转换过程中得动画

     *  completion              转换完成

     */

    [self addChildViewController:newController];

    [self transitionFromViewController:oldController toViewController:newController duration:2.0 options:UIViewAnimationOptionTransitionFlipFromLeft animations:nil completion:^(BOOL finished) {

        if (finished) {

            // 移除oldController，但在removeFromParentViewController：方法前不会调用willMoveToParentViewController:nil 方法，所以需要显示调用

            [newController didMoveToParentViewController:self];

            [oldController willMoveToParentViewController:nil];

            [oldController removeFromParentViewController];

            self.currentVC = newController;

        }else{

            self.currentVC = oldController;

            }

    }];

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

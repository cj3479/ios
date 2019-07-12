//
//  ViewController.m
//  TestApp1
//
//  Created by chengjian on 2019/5/23.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
//#import "TestPersonSub.h"
#import "NextViewController.h"
#import "UITableviewVC.h"
#define  PROTEUS_EVENT_CMD_AD_PK_LEFT_CLICK        @"cmd_ad_pk_left_clickg"
@implementation ViewController
- (IBAction)clickon:(id)sender {
    NSLog(@"clickon......");
}
- (void)viewWillLayoutSubviews{
    
}
- (void)viewDidLayoutSubviews{
    
}

- (void)test:(AdStatSrc) statSrc
{
    switch (statSrc) {
        case AdStatSrc_IMAX_PAGE :
            NSLog(@"test.........true");
            break;
        case AdStatSrc_NONE :
            NSLog(@"test.........none");
            break;
        default:
            break;
    }
    NSLog(@"test.........");
}

- (void)scrollToLandingPage:(UITapGestureRecognizer *)tap
{
    NSLog(@"scrollToLandingPage....");
}
////从下往上计算布局
//- (void)layoutSubviews {
//}
- (void)viewDidLoad {
    _person1 = [[Person alloc] init];
    bool isque =   [@"cmd_ad_pk_left_click" isEqualToString:PROTEUS_EVENT_CMD_AD_PK_LEFT_CLICK];
    for (int i = 0; i < 10; i++) {
        self.title = @"崩溃ssss1111";
    }
    UIWindow *window1 = [[UIApplication sharedApplication].windows lastObject];
    window1.windowLevel = UIWindowLevelAlert;
    NSArray *windows =  [[UIApplication sharedApplication] windows];
    for (UIWindow *win in windows) {
        NSLog(@"viewDidLoad111: %f", win.windowLevel);
    }
    NSLog(@"viewDidLoadssssss: %f", UIWindowLevelAlert);
//    NSLog(@"viewDidLoadddd: %@,%@", TestDEfault,TestExtern);
    [self test:nil];
    AdStatSrc aab = AdStatSrc_IMAX_PAGE ;
    NSDictionary * dic1=[NSDictionary dictionaryWithObject:@(aab) forKey:@"key1"];
    AdStatSrc aa=[[dic1 objectForKey:@"key1"] intValue];
//    NSLog(@"test.........aa=%d",aa);
    [self test:aa];
    self.title = @"崩溃1111";
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenRect.size;
    CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat screenX = screenSize.width * scale;
    NSLog(@"viewDidLoadssssss: %d", self.tempRDVTabBarHeight);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //    label = [[UILabel alloc]init];
    label =UILabel.alloc.init;
    //这一句创建了一个静态文本控件，未指定内容、大小和位置
    label.frame = CGRectMake(200, 200, 40, 90);
    
    NSString *text =@"hello world ddd fffff gfdgg dgdfgf dgfdgfg";
    NSLog(@"dddddd");
    //"@"的作用是把一个c风格的字符串"hello world"包装成一个NSString对象
    label.text = text;
    label.backgroundColor = UIColor.blueColor;
    label.numberOfLines = 1;
    label.userInteractionEnabled = YES;
    label.lineBreakMode =  NSLineBreakByTruncatingTail;
//    [label sizeToFit];
    UITapGestureRecognizer *tapScrollPanelGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollToLandingPage:)];
    [label addGestureRecognizer:tapScrollPanelGesture];
    CGRect tempFrame = label.frame;
//    tempFrame.origin.y = 20;
//    label.frame = tempFrame;
//    NSLog(@"dddddd %@",label.frame);
//    label.center = self.view.center;
//    label.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:0];
    NSLog(@"dddddd");
    
    NSLog(@"dddddd");
    
    NSLog(@"当前方法名：%@",NSStringFromSelector(_cmd));
    NSLog(@"当前方法名: %s",sel_getName(_cmd));
    NSLog(@"[类 方法]：%s",__func__);
    NSLog(@"[类 方法]：%s",__FUNCTION__);
    NSLog(@"当前类名：%@",NSStringFromClass([self class]));
    NSLog(@"当前行号：%d",__LINE__);
    
    NSLog(@"当前文件存储路径：%s",__FILE__);
    NSString *pathStr = [NSString stringWithCString:__FILE__ encoding:NSUTF8StringEncoding]; //将CString -> NSString
       NSLog(@"当前文件名：%@",[pathStr lastPathComponent]);
    
    NSLog(@"当前日期：%s",__DATE__);
    NSLog(@"当前时间：%s",__TIME__);
    NSLog(@"当前App运行要求的最低ios版本：%d",__IPHONE_OS_VERSION_MIN_REQUIRED);  //Develop Target: 已选8.0
    NSLog(@"当前App支持的最高ios版本：%d",__IPHONE_OS_VERSION_MAX_ALLOWED);    //Develop Target: 最高9.0
    NSLog(@"打印__IPHONE_7_0：%d",__IPHONE_7_0);
    NSLog(@"当前线程：%@",[NSThread currentThread]);
    NSLog(@"主线程：%@",[NSThread mainThread]);
    NSLog(@"当前栈信息：%@", [NSThread callStackSymbols]);
    NSLog(@"bundid：%@", [[NSBundle mainBundle]bundleIdentifier]);
    NSThread *current = NSThread.currentThread;
    NSLog(@"版本号：%@", [[[NSBundle mainBundle]infoDictionary] objectForKey:@"CFBundleVersion"]);
    NSLog(@"显示名字：%@", [NSBundle.mainBundle.infoDictionary objectForKey:@"CFBundleDisplayName"]);
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"test1：%@", [NSBundle.mainBundle.infoDictionary objectForKey:@"CFBundlePackageTypedd"]);
    //    创建button
    NSLog(@"testdd：%@", [NSBundle.mainBundle.infoDictionary objectForKey:@"test"]);
    //    注：设置类型只能在初始化的时候
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //    设置frame
    button.frame = CGRectMake(100, 100, 170, 44);
    //    设置背景颜色,分状态
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"普通Button" forState:UIControlStateNormal];
    [button setTitle:@"高亮Button" forState:UIControlStateHighlighted];
    //    设置文字颜色,分状态
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    //    设置文字阴影,分状态
    [button setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    //    设置文字偏移量
    button.titleLabel.shadowOffset = CGSizeMake(3, 2);
    //    设置内容图片,分状态
    NSString *strResourcesBundle = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"bundle"];
    NSString *strC = [[NSBundle bundleWithPath:strResourcesBundle] pathForResource:@"a" ofType:@"jpg" inDirectory:@"images"];
    UIImage *imgC = [UIImage imageWithContentsOfFile:strC];
    UIImage *image = [UIImage imageNamed:@"d.jpg"];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:imgC forState:UIControlStateHighlighted];
    //    设置button的imageview的背景
    //    [button setImage:[UIImage imageNamed:@"power_pressed.png"] forState:UIControlStateHighlighted];
    button.imageView.backgroundColor = [UIColor purpleColor];
    //    //    设置Button背景图片,分状态
    //   [button setBackgroundImage:[UIImage imageNamed:@"power_bg_img_normal.png"] forState:UIControlStateHighlighted];
    //    [button setBackgroundImage:[UIImage imageNamed:@"power_bg_img_pressed.png"] forState:UIControlStateHighlighted];
    //    添加到ViewController中去
//       [self.view addSubview:button];
    //
    [self.view addSubview:label];
    
    //    //    Button监听事件，非常重要
    //    /**
    //     *addTarget:目标（让谁做这个事情）
    //     *action:方法（做什么事情-->方法）
    //     *forControlEvents:事件
    //     */
    [button addTarget:self action:@selector(demo:) forControlEvents:UIControlEventTouchUpInside];
    
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
    sampleProtocol.delegate = self;
//    [label setText:@"Proc..nnsss."];
    [sampleProtocol startSampleProcess];
    // Do any additional setup after loading the view, typically from a nib.
//    Person *person =     [[TestPersonSub   alloc]init];
//    [person eataaa];
    NSLog(@"viewDidLoad 222222222：%@",_person1);
    NextViewController *next =[[NextViewController alloc]init];
    NSLog(@"aaaaaaaaa：%@",next.labels);
    next.labels.text=@"startinghhhh";
    next.view.frame = CGRectMake(0, 250, 120, 400);
//    [self addChildViewController:next];
    NSLog(@"aaaaaaaaa11：%@",next.labels);
    //    next.view.hidden = YES;
    next.view.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:0];
    //    [self.view addSubview:next.view];
    NSLog(@"aaaaaaaaa22：%@",next.labels);
    self.view.clipsToBounds = NO;
    UITableviewVC *table =[[UITableviewVC alloc]init];
    NSLog(@" UITableviewVC addChildViewController 1");
//    [self addChildViewController:table];
    NSLog(@" UITableviewVC addChildViewController 2");
    table.view.frame = CGRectMake(0, 200, 220, 900);
//    table.view.backgroundColor = [UIColor colorWithRed:255 green:0 blue:0 alpha:255];
//    [self.view addSubview:table.view];
    bool isSubview = [self.view isDescendantOfView:table.view];
    bool isSubview1 = [table.view isDescendantOfView:self.view];
    NSLog(@" UITableviewVC addChildViewController 3 =%d,%d",isSubview,isSubview1);
//    self.view.clipsToBounds = NO;
    //分配内存
    array = [[NSMutableArray alloc] init];
    condition = [[NSCondition alloc] init];
    //    //创建生产者
    //    [NSThread detachNewThreadSelector:@selector(produceAction) toTarget:self withObject:nil];
    //    //创建消费者
    //    [NSThread detachNewThreadSelector:@selector(consumerAction) toTarget:self withObject:nil];
    //    [NSThread detachNewThreadSelector:@selector(consumerAction) toTarget:self withObject:nil];
//    label = UILabel.alloc.init;
    NSLog(@"22222222end");
//    dispatch_queue_t queue = dispatch_queue_create("net.bujige.testQueue", DISPATCH_QUEUE_SERIAL);
//    dispatch_main();
     NSLog(@"22222222end 111");
}

-(void)injected{
    NSLog(@"I've been aaaa injected: %@", self);
    [self.view.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self viewDidLoad];
    //    [self viewWillAppear:YES];
    //    [self viewWillDisappear:YES];
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Sample protocol delegate
-(void)processCompleted{
    //    [label setText:@"Process Completed"];
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}
-(void)demo:(UIButton *) buttona{
    NSLog(@"%@",buttona);
}
-(IBAction)clickButton:(UIButton *)button{
    NSLog(@"%@",button);
    button.enabled = NO;
}


- (void)produceAction{
    
    //异常捕捉
    while (true) {
        @try {
            //不管怎么样先上个锁。
            [condition lock];
            while (array.count == 10) {
                NSLog(@"满了，不能再生产了");
                //停止生产，阻塞线程
                [condition wait];
            }
            
            //模拟生产，没0.2~2秒生产一个
            //            [NSThread sleepForTimeInterval:(arc4random()%10+1)/5.0];
            [array addObject:@"牛奶"];
            //同时打印
            NSLog(@"生产了一个产品,当前个数是：%ld",array.count);
            //唤醒消费者(all)所有的
            [condition broadcast];
            
        }
        //可以打印出异常是什么原因！
        @catch (NSException *exception) {
            
            
        }
        @finally {
            //解锁
            [condition unlock];
        }
    }
}
- (void)viewWillAppear:(BOOL)animated{
    
}
- (void)consumerAction{
    
    //异常捕捉
    while (true) {
        @try {
            //不管怎么样先上个锁。
            [condition lock];
            while (array.count == 0) {
                NSLog(@"没有库存了");
                //停止消费，阻塞线程
                [condition wait];
            }
            
            //模拟消费，没0.2~2秒消费一个
            //            [NSThread sleepForTimeInterval:(arc4random()%10+1)/5.0];
            [array removeLastObject];
            //同时打印
            NSLog(@"消费了一个产品,当前个数是：%ld",array.count);
            //唤醒生产者(all)所有的
            [condition broadcast];
            
        }
        @catch (NSException *exception) {
        }
        @finally {
            //解锁
            [condition unlock];
            
        }
        
    }
}



//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
@end

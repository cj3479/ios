//
//  ViewController.m
//  TestApp1
//
//  Created by chengjian on 2019/5/23.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NextViewController.h"

@implementation ViewController
- (IBAction)clickon:(id)sender {
    NSLog(@"clickon......");
}
- (void)viewDidLoad {
    NSLog(@"viewDidLoad: %@", self);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //    label = [[UILabel alloc]init];
    label =UILabel.alloc.init;
    //这一句创建了一个静态文本控件，未指定内容、大小和位置
    
    
    
    label.text=@"hello world ddd";
    //"@"的作用是把一个c风格的字符串"hello world"包装成一个NSString对象
    [label sizeToFit];
    label.center =self.view.center;
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
    [self.view addSubview:button];
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
    [label setText:@"Proc..nnsss."];
    [sampleProtocol startSampleProcess];
    // Do any additional setup after loading the view, typically from a nib.
    Person *person =     [[Person     alloc]init];
    [person run];
    NextViewController *next =[[NextViewController alloc]init];
    [self addChildViewController:next];
    next.view.frame = CGRectMake(0, 250, 120, 100);
    [self.view addSubview:next.view];
    self.view.clipsToBounds = NO;
    
    //分配内存
    array = [[NSMutableArray alloc] init];
    condition = [[NSCondition alloc] init];
//    //创建生产者
//    [NSThread detachNewThreadSelector:@selector(produceAction) toTarget:self withObject:nil];
//    //创建消费者
//    [NSThread detachNewThreadSelector:@selector(consumerAction) toTarget:self withObject:nil];
//    [NSThread detachNewThreadSelector:@selector(consumerAction) toTarget:self withObject:nil];
    label =UILabel.alloc.init;
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
            [NSThread sleepForTimeInterval:(arc4random()%10+1)/5.0];
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
            [NSThread sleepForTimeInterval:(arc4random()%10+1)/5.0];
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

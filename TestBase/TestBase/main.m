//
//  main.m
//  TestApp1
//
//  Created by chengjian on 2019/5/23.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"
#import "Person+NewFunction.h"
#import "MyObject.h"
#import "SelectorSub.h"
#import "testFWStatic/teststaticlib.h"
#import "testFWStatic/testFWStatic.h"
#import "testDMlib/LibPerson.h"
#import "TestThread.h"
typedef unsigned long long        QUINT64;
#define FBKVOKeyPath(KEYPATH) \
@(((void)(NO && ((void)KEYPATH, NO)), \
({ const char *fbkvokeypath = strchr(#KEYPATH, '.'); NSCAssert(fbkvokeypath, @"Provided key path is invalid."); fbkvokeypath + 1; })))
typedef NS_ENUM(NSUInteger, RIJShortVideoRequestState) {
    RIJShortVideoRequestStateLoading,
    RIJShortVideoRequestStateNoData,
    RIJShortVideoRequestStateError,
    RIJShortVideoRequestStateSuccess,
};
extern int externInt =10;
void testThreadMethod(){
    TestThread *testThread = [[TestThread alloc]init];
    [testThread startThread];
}
void testNSThread(){
    TestThread *testThread = [[TestThread alloc]init];
    [testThread testNSThread];
}
void testNSGCD(){
    TestThread *testThread = [[TestThread alloc]init];
    [testThread testGCD];
}
#define AA 1
int main(int argc, char * argv[]) {
//    testThreadMethod();
//    testNSThread();
    testNSGCD();
    float aaaaa = 1.1f;
    int bbbbb = (int)(aaaaa * 1000);
    NSLog(@"aaaaa: %f", aaaaa);
    NSLog(@"bbbbb: %d", bbbbb);
    BOOL a = TRUE;
    a = true;
    a = YES;
//    NSUInteger startIndex =2;
//    for (NSUInteger index = startIndex - 1; index >= 0; index--) {
//        NSLog(@"oneNodeIndexPath: ");
//    }
    NSString *testStr = nil;
//     NSString *testStr1 = FBKVOKeyPath(RIJShortVideoRequestStateSuccess);
//     NSLog(@"oneNodeIndexPath: %d", testStr.length);
    NSIndexPath *oneNodeIndexPath = [NSIndexPath indexPathWithIndex:6];
    NSLog(@"oneNodeIndexPath: %@", oneNodeIndexPath);
    NSLog(@"currentThread---%@",[NSThread currentThread]);
    // 定义并初始化一个C数组：1个元素
    NSUInteger indexs[] = {1};
    NSIndexPath *oneNodeIndexPath2 = [NSIndexPath indexPathWithIndexes:indexs length:3];
    NSLog(@"oneNodeIndexPath: %@", oneNodeIndexPath2);
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:9];
    NSLog(@"indexPath: %@", indexPath);
    // 定义并初始化一个C数组：2个元素
    NSUInteger indexs2[] = {1, 2};
    NSIndexPath *twoNodeIndexPath = [NSIndexPath indexPathWithIndexes:indexs2 length:2];
    NSLog(@"twoNodeIndexPath: %@", twoNodeIndexPath);
    
    // 定义并初始化一个C数组：3个元素
    NSUInteger indexs3[] = {1, 2, 3};
    NSIndexPath *threeNodeIndexPath = [NSIndexPath indexPathWithIndexes:indexs3 length:3];
    NSLog(@"threeNodeIndexPath: %@", threeNodeIndexPath);
    // 串行队列的创建方法
    dispatch_queue_t queue = dispatch_queue_create("net.bujige.testQueue", DISPATCH_QUEUE_SERIAL);
//    dispatch_sync(queue, ^{
//        // 追加任务1
//        for (int i = 0; i < 2; ++i) {
//            [NSThread sleepForTimeInterval:1];              // 模拟耗时操作
//            NSLog(@"1---%@",[NSThread currentThread]);      // 打印当前线程
//        }
//    });
//    NSLog(@"111111111111111");
//    dispatch_sync(queue, ^{
//        // 追加任务2
//        for (int i = 0; i < 2; ++i) {
//            [NSThread sleepForTimeInterval:1];              // 模拟耗时操作
//            NSLog(@"2---%@",[NSThread currentThread]);      // 打印当前线程
//        }
//    });
//    NSLog(@"222222222");
//    dispatch_sync(queue, ^{
//        // 追加任务3
//        for (int i = 0; i < 2; ++i) {
//            [NSThread sleepForTimeInterval:1];              // 模拟耗时操作
//            NSLog(@"3---%@",[NSThread currentThread]);      // 打印当前线程
//        }
//    });
    NSLog(@"3333333");
    NSLog(@"syncConcurrent---end");
//    // 并发队列的创建方法
//    dispatch_queue_t queue = dispatch_queue_create("net.bujige.testQueue", DISPATCH_QUEUE_CONCURRENT);
    // 主队列的获取方法
//    dispatch_queue_t queue = dispatch_get_main_queue();
    int (^ helloWorld)(int) = ^(int i) {
        NSLog(@"Hello World!");
        return i;
    };
//    void (^helloWorld)(void);
//    helloWorld=^(void){
//        NSLog(@"Hello World!");
//    };
    helloWorld(10);
    NSArray * arraya=[NSArray arrayWithObjects:@"4",@"1",@"2",@"3",@"5", nil];
    arraya= [arraya sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        int a1=[obj1 intValue];
        int a2=[obj2 intValue];
        return a1>=a2?-1:1;
    }];
    NSLog(@"%@",arraya);
    QUINT64 channelID =10;
    NSNumber *longlongNumber = [NSNumber numberWithLongLong:channelID];
    NSDictionary *userInfo = @{@"isRefreshChannel":@(YES),@"channel_id":@(channelID),@"channel_id_qq":@(0),@"type":@"1",@"type":@"1",@"typess":@(AA)};
    if(userInfo[@"channel_id"]){
        NSLog(@"dfdsfdsdddfddf");
    }
    if(userInfo[@"channel_idsss"]){
        NSLog(@"aaaaaaaa");
    }
    if(userInfo[@"channel_id_qq"]){
        NSLog(@"bbbbbbbb");
    }
    //    NSDictionary *userInfo;
    QUINT64 channelID3 =[userInfo[@"channel_id"] unsignedLongLongValue];
    NSLog(@"userInfo=%@",userInfo[@"channel_id"]);
    int channelID4 =[userInfo[@"type"] intValue];
//    NSLog(@"userInfo=%@",userInfo[@"channel_id"]);
    NSLog(@"userInfsssssssso=%d",channelID4);
    bool add = YES;
    NSLog(@"YES = %d", add ? YES : NO);
    //    NSDictionary *pop_sheet = [NSJSONSerialization JSONObjectWithData:NULL
    //                                                    options:NSJSONReadingMutableContainers
    //                                                                error:nil];
    SelectorSub *ss = [[SelectorSub alloc]init];
    NSDictionary * dic1=[NSDictionary dictionaryWithObject:@(channelID) forKey:@"key1"];
    SelectorSub * str111=[dic1 objectForKey:@"key1"];
    NSNumber *longlongNumber2 =[dic1 objectForKey:@"key1"];
    NSLog(@"%@",longlongNumber2);
    QUINT64 channelID2 =longlongNumber2.longLongValue;
    NSLog(@"%@",dic1[@"key1"]);
    NSDictionary * dic2=[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:ss,@"object2",@"object3", nil] forKeys:[NSArray arrayWithObjects:@"key1",@"key2",@"key3", nil]];
    NSLog(@"dic2 has :%@",dic2);
    ss.methodTest = @selector(parentMethod);
    [ss TestParentMethod];
    ss.methodTest = @selector(SubMethod);
    [ss TestParentMethod];
    //    ss.methodTest = @selector(parentMethod); 这句在运行期时，会寻找到父类中的方法进行调用。
    //
    //    ss.methodTest = @selector(SubMethod);//这句就在运行期时，会先寻找父类，如果父类没有，则寻找子类。
    //
    //
    //
    //    如果这里将ss.methodTest = @selector(test); 其中test即不是ss父类，也不是ss本身，也非SS子类，哪么这个时候在使用
    //
    //    [self performSelector:_methodTest withObject:nil];就会出现地址寻找出错 。
    
    //    [ss release];
    NSLog(@"main 当前栈信息：%@", [NSThread callStackSymbols]);
    NSLog(@"%s", (char *)(@selector(doSomething)));
    Person * person33=[Person alloc];
    person33.name=@"1239999";
    NSLog(@"222222 person33=%@,name=%@",person33,person33.name);
    LibPerson *person11 = [[LibPerson alloc]init];
    person11.watch;
    Teststaticlib *lib = [[Teststaticlib alloc]init];
    [lib testslib:@"ddddddd"];
    [person11 performSelectorOnMainThread:@selector(eat) withObject:nil waitUntilDone:NO];
    testFWStatic *fwstatic = [[testFWStatic alloc]init];
    [fwstatic testFWStaticA];
    Class LSApplicationWorkspace_class = NSClassFromString(@"LSApplicationWorkspace");
    //打印设备中的所有的bundid
    //    NSObject *workspace = [LSApplicationWorkspace_class performSelector:@selector(defaultWorkspace)];
    //    NSArray *arrAPP = [workspace performSelector:@selector(allApplications)];
    //    NSLog(@"arrAPP: %@",arrAPP);
    NSArray * array1=[NSArray arrayWithObjects:@"0",@"1",@"2",@"3", nil];
    NSLog(@"array1 are :%@",array1);
    NSArray * array2=[[NSArray alloc] initWithObjects:@"00",@"11",@"22",@"33", nil];
    NSLog(@"array2 are :%@",array2);
    NSString * str=[array1 objectAtIndex:1];
    NSLog(@"%@",str);
    NSMutableArray * array=[NSMutableArray arrayWithObjects:@"1",@"2",@"3", nil];
    NSArray * addArray=[NSArray arrayWithObjects:@"4",@"5",@"6", nil];
    [array addObjectsFromArray:addArray];
    NSLog(@"obj1 class is11111 = %@",nil);
    NSLog(@"%@",array);
    id obj1 = [NSMutableArray alloc];
    id obj2 = [[NSMutableArray alloc] init];
    
    id obj3 = [NSArray alloc];
    id obj4 = [[NSArray alloc] initWithObjects:@"Hello",nil];
    
    NSLog(@"obj1 class is %@",NSStringFromClass([obj1 class]));
    NSLog(@"obj2 class is %@",NSStringFromClass([obj2 class]));
    
    NSLog(@"obj3 class is %@",NSStringFromClass([obj3 class]));
    NSLog(@"obj4 class is %@",NSStringFromClass([obj4 class]));
    
    id obj5 = [MyObject alloc];
    id obj6 = [[MyObject alloc] init];
    //    id obj7 = [[MyObject alloc] init];
    NSLog(@"obj5 class is %@",NSStringFromClass([obj5 class]));
    NSLog(@"obj6 class is %@",NSStringFromClass([obj6 class]));
    //    NSLog(@"obj7 class is %@",NSStringFromClass([obj6 class]));
    
    NSLog(@"main 1111");
    Person * person=[[Person alloc] init];
    NSLog(@"222222 person=%@",person);
    Person * person2=[Person alloc];
    NSLog(@"222222 person2=%@,name=%@",person2,person2.name);
    [person2 testlib:@"cj" andage:@"88"];
    NSLog(@"person2。1=%p,obj7 class is %@",person2,NSStringFromClass([person2 class]));
    person2=[person2 init];
    NSLog(@"222222222 person2=%@,name=%@",person2,person2.name);
    //    [person2 testlib:@"cj11" :@"88"];
    NSLog(@"person2。2=%p,obj8 class is %@",person2,NSStringFromClass([person2 class]));
    id person1=[[NSObject alloc] init];
//    NSLog(@"222222 person1=%@",person1);
    //    id person1=[[Person alloc] init];
    //        [person1 exercis];
    [person exercis];
    [person run];
    [person exercise:^(NSString *name, int age) {
        NSLog(@"%@,%d",name,age);
    }];
//    dispatch_main();
    NSLog(@"ssssssss=%s", (char *)(@selector(doSomething)));
    //调用类别中增加的eat方法
    [NSThread sleepForTimeInterval:15];
    [person eat];
//    NSArray * array=[NSArray arrayWithObjects:@"4",@"1",@"2",@"3",@"5", nil];
//    array= [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//        int a1=[obj1 intValue];
//        int a2=[obj2 intValue];
//        return a1>=a2?-1:1;
//    }];
//    NSLog(@"%@",array);
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
//    return 1;
}

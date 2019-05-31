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
#import "teststaticlib.h"

int main(int argc, char * argv[]) {
    Teststaticlib *lib = [[Teststaticlib alloc]init];
    [lib testslib:@"ddddddd"];
    Class LSApplicationWorkspace_class = NSClassFromString(@"LSApplicationWorkspace");
    NSObject *workspace = [LSApplicationWorkspace_class performSelector:@selector(defaultWorkspace)];
    NSArray *arrAPP = [workspace performSelector:@selector(allApplications)];
    NSLog(@"arrAPP: %@",arrAPP);
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
    Person * person2=[Person alloc];
    [person2 testlib:@"cj" andage :@"88"];
    NSLog(@"person2。1=%p,obj7 class is %@",person2,NSStringFromClass([person2 class]));
    person2=[person2 init];
    [person2 testlib:@"cj11" andage :@"88"];
    NSLog(@"person2。2=%p,obj8 class is %@",person2,NSStringFromClass([person2 class]));
    id person1=[[NSObject alloc] init];
    //    id person1=[[Person alloc] init];
//        [person1 exercis];
    
    [person exercis];
    [person run];
    //调用类别中增加的eat方法
    [person eat];
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

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

int main(int argc, char * argv[]) {
    NSLog(@"main 1111");
    Person * person=[[Person alloc] init];
    id person1=[[NSObject alloc] init];
    //    id person1=[[Person alloc] init];
    //    [person1 exercis];
    
    [person exercis];
    [person run];
    //调用类别中增加的eat方法
    [person eat];
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

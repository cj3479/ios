//
//  Person.h
//  TestApp1
//
//  Created by chengjian on 2019/5/24.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
-(void)exercis;
-(void)run;
@property (nonatomic,copy)NSString * name;
@property (nonatomic,assign)int age;
@end


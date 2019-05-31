//
//  Person.h
//  TestApp1
//
//  Created by chengjian on 2019/5/24.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject{
    int a;
}
-(void)exercis;
-(void)run;
-(void)testlib:(NSString *)nm andage :(NSString *)age;
@property (nonatomic,copy)NSString * name;
@property (nonatomic, readonly, unsafe_unretained)int age;
@end


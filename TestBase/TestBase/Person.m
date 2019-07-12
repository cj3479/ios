//
//  Person.m
//  TestApp1
//
//  Created by chengjian on 2019/5/24.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)exercise:(myBlock)aa{
    NSString * theName=@"ZhangSan";
    int age=10;
    aa(theName,age);
}
//@synthesize age = shuaiI;
- (void)exercis{
    NSLog(@"I am cj");
}
-(void)testlib:(NSString *)nm andage:(NSString *)age{
    NSLog(@"name=%@",nm);
    NSLog(@"age=%@",age);
}
-(void)run{
    a=10;
    [self displayObject];
    [Person displayClass];
    NSLog(@" 类 I am person run");
}
-(void)displayObject{
//    _age = 30;
    NSLog(@"类扩展中声明的对象方法=%d",a);
     NSLog(@"类扩展中声明的对象方法=%d",self.age);
    NSLog(@"类扩展中声明的对象方法=%d",_age);
     NSLog(@"类扩展中声明的对象方法=%@",_name);
//     NSLog(@"类扩展中声明的对象方法=%d",shuaiI);
}

-(void)testPerson:(NSString *)nm :(NSString *)age{

}
+(void)displayClass{
    NSLog(@"类扩展中声明的类方法");
}
- (void)dealloc
{
   NSLog(@"dealloc222222 %@",self);
}
+ (instancetype)alloc{
    NSLog(@"alloc1111111");
    return [super alloc];
}
//-(int)age{
//    return _age;
//}
@end

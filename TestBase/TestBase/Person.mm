//
//  Person.m
//  TestApp1
//
//  Created by chengjian on 2019/5/24.
//  Copyright © 2019年 chengjian. All rights reserved.
//
#import "Person.h"
#import "TestARC.h"
#import <objc/runtime.h>
#import "TestAdd.h"
//const NSArray*  defaultTitlesGroup = @[ProteusEventCmdAdTripleImgClick,ProteusEventCmdAdLargeImgClick];
//const NSDictionary *defaultTitlesGroup = @{ProteusEventCmdAdLargeImgClick:@(FeedsAdLogo)};
NSDictionary* const defaultTitlesGroup = @{ProteusEventCmdAdLargeImgClick:@(FeedsAdLogo)};
NSDictionary * const defaultTitlesGroup1 = @{@"d":@"d"};
int a =10;
int* const testConstInt = &a;
const int* testConstIntA = &a;
int bbb=10;
@implementation Person
+ (void)load{
    NSLog(@"load Person");
//    static dispatch_once_t onceToken;
//        // We want to make sure this is only done once!
//    dispatch_once(&onceToken, ^{
//        NSLog(@"TestAdd dispatch_once");
//        Class TestAddClass = [TestAdd class];
//        Class personClass = [Person class];
//        // Get the representation of the method names to swizzle.
//        SEL originalSelector = @selector(sayHello);
//        SEL swizzledSelector = @selector(add_sayHello);
//        // Get references to the methods to swizzle.
//        Method originalMethod = class_getInstanceMethod(personClass, originalSelector);
//        Method swizzledMethod = class_getInstanceMethod(TestAddClass, swizzledSelector);
//
//        // Attempt to add the new method in place of the old method.
//        BOOL didAddMethod = class_addMethod(personClass, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
//
//        // If we succeeded, put the old method in place of the new method.
//        if (didAddMethod) {
//            class_replaceMethod(TestAddClass, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
//        } else {
//            // Otherwise, just swap their implementations.
//            method_exchangeImplementations(originalMethod, swizzledMethod);
//        }
//    });
}
-(void)exercise:(myBlock)aa{
    NSLog(@"I am cj %@",aa);
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
-(void)setName:(NSString *)name{
    NSLog(@"name=%@",name);
//    self.name = name;
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
//第一种就是直接赋值
- (void)changeEnName:(NSString*)name{
    _enName = name;
}
//第二种点语法赋值
- (void)changeEnNameFromSetter:(NSString*)name {
    self.enName = name;
}
- (void)changeAgeFromSetter:(int)age
{
    self.age = age;
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

- (void)sayHello{
//    [self sayHello];
//    NSAssert(NO, @"dsfdsfdsf");
//    NSLog(@"person say hello %d",self.age);
}
//-(int)age{
//    return _age;
//}
@end

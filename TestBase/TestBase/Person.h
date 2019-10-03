//
//  Person.h
//  TestApp1
//
//  Created by chengjian on 2019/5/24.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
//#define AdLargeImgClick @"cmd_large_img_click"
static NSString* const ProteusEventCmdAdLargeImgClick = @"cmd_large_img_click";
//static NSString* const ProteusEventCmdAdTripleImgClick = @"cmd_triple_img_click";
static NSString* const ProteusEventCmdAdTripleImgClick = @"cmd_triple_img_click";
extern NSDictionary* const defaultTitlesGroup;
//extern const NSDictionary *defaultTitlesGroup;
extern int* const testConstInt;
extern const int*  testConstIntA;
static void changeEnNameDDD(NSString* name){
    
}
typedef enum : NSUInteger {
    FeedsAdLogo = 1,
} QQReadInJoyAdClickPositionDD;
//static const int RIJConstantMultiVideoChannelID = 409409;
@interface Person : NSObject{
    int a;
}

//第一种就是直接赋值
- (void)changeEnName:(NSString*)name;
//第二种点语法赋值
- (void)changeEnNameFromSetter:(NSString*)name;

- (void)changeAgeFromSetter:(int)age;
typedef void(^myBlock)(NSString * name,int age);
-(void)exercise:(myBlock)block;
-(void)exercis;
-(void)run;
-(void)testlib:(NSString *)nm andage :(NSString *)age;
-(Boolean)testliba:(NSArray *)nm andage :(NSException *)age;
-(void)testPerson:(NSString *)nm :(NSString *)age;
@property (nonatomic,copy)NSString * name;
@property (nonatomic,copy)NSString * enName;
//@property (nonatomic, readonly, unsafe_unretained)int age;
@property (nonatomic, assign)int age;
@property (nonatomic, assign)CGFloat height;
- (void)sayHello;
- (void)sayHello11;
@end


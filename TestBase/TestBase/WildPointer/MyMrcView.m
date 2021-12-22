//
//  MyMrcView.m
//  TYLCopyLabel
//
//  Created by 橙子 on 16/4/8.
//  Copyright © 2016年 Lengain. All rights reserved.
//

#import "MyMrcView.h"

@implementation MyMrcView

- (instancetype)init
{
    self = [super init];
    if (self) {
        UILabel *tempView = [[UILabel alloc]init];
        NSLog(@"tempView=%@",tempView);
//        int a = [tempView count];
//        [tempView autorelease];
        [tempView release];
//        [tempView release];
        //AppDelegate里开启了init_safe_free()，表示释放的内存不会被覆盖，所以tempView调用setNeedsDisplay肯定会崩溃
        //如果不开启init_safe_free()，下面创建了10个UIView，那块被释放的内存可能会被覆盖，所以tempView调用setNeedsDisplay不一定会崩溃
        for (int i = 0; i < 10; i ++) {
            UILabel *temp = [[[UILabel alloc]init] autorelease];
            NSLog(@"temp=%@",temp);
            temp.text = [NSString stringWithFormat:@"UILabel_%d",i];
//            [self addSubview:temp];
        }
        NSLog(@"text=%@",tempView.text);
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

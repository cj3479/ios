//
//  DSSafeFree.h
//  DSCrashDemo
//
//  Created by dasheng on 16/4/14.
//  Copyright © 2016年 dasheng. All rights reserved.
//
#ifndef DSSafeFree_h
#define DSSafeFree_h
#import <Foundation/Foundation.h>
#ifdef __cplusplus //而这一部分就是告诉编译器，如果定义了__cplusplus(即如果是cpp文件，
extern "C"{ //因为cpp文件默认定义了该宏),则采用C语言方式进行编译
#endif //__cplusplus
bool init_safe_free(void);
#ifdef __cplusplus
}
#endif //__cplusplus

#endif //DSSafeFree.h

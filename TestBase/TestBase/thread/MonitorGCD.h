//
//  MonitorGCD.h
//  TestBase
//
//  Created by chengjian on 2019/6/23.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^monitor_block_t)(void);
struct Msg{
    struct Msg *next;
    struct Msg *previous;
    monitor_block_t block;
};
typedef struct Msg Tmsg;
typedef struct QueueN{
    struct Msg *cur;
    bool isSerial;
    dispatch_semaphore_t semaphore;
} Queue;
@interface MonitorGCD : NSObject{
    Tmsg *msg;
    Queue *queue;
}
-(void)test_sync:(Queue *) queue block_t :(monitor_block_t)block;
-(void)test_async:(Queue *) queue block_t :(monitor_block_t)block;
@end

//
//  MonitorGCD.m
//  TestBase
//
//  Created by chengjian on 2019/6/23.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "MonitorGCD.h"
//static  NSDictionary* const defaultTitlesGroup1 = @{};
static NSString* const ProteusEventCmdAdLargeImgClick = @"cmd_large_img_click";
@implementation MonitorGCD
-(void)test_sync:(Queue *) queue block_t :(monitor_block_t)block{
    Tmsg* msg = (Tmsg*)calloc(1, sizeof(Tmsg));
    msg->block = block;
    if (!queue->cur) {
        queue->cur = msg;
        queue->cur->next = nil;
        queue->cur->previous = nil;
    } else {
        queue->cur->next = msg;
        msg->previous = queue->cur;
    }
    run(self,queue, msg, YES);
}
-(void)test_async:(Queue *) queue block_t :(monitor_block_t)block{
    Tmsg* msg = (Tmsg*)calloc(1, sizeof(Tmsg));
    msg->block = block;
    if (!queue->cur) {
        queue->cur = msg;
        queue->cur->next = nil;
        queue->cur->previous = nil;
    } else {
        queue->cur->next = msg;
        msg->previous = queue->cur;
    }
    run(self,queue, msg, NO);
}
- (void)excute:(NSDictionary *)dic
{
//    NSData *msgData = [dic objectForKey:@"msg"];
//    NSData *queueData = [dic objectForKey:@"queue"];
//    dispatch_semaphore_t semaphore = [dic objectForKey:@"signal"];
//    struct Msg msgValue;
//    struct QueueN queueValue;
//    [msgData getBytes:&msgValue length:sizeof(Tmsg)];
    MonitorGCD *gcd = [dic objectForKey:@"content"];
    Tmsg *msg = gcd->msg;
//    [msgData getBytes:&queueValue length:sizeof(Queue)];
    Queue *queue = gcd->queue;
    msg->block();
    Tmsg *cur = queue->cur;
    if(cur){
        queue->cur = cur->next;
        cur->next->previous = nil;
    }
    //发送信号量，使信号量加1，这句代码执行后，处于阻塞状态的dispatch_semaphore_wait会收到信号， 执行它后面的代码。
    dispatch_semaphore_signal(queue->semaphore);
}
void run(MonitorGCD* cdg,Queue* queue,Tmsg* msg ,bool isSync){
    if (isSync) {
        if (msg && queue->cur == msg) {
            msg->block();
            queue->cur = nil;
        } else {
            //使用信号量,并让信号量-1，如果当前信号量是0就一直等待，直到信号量大于0执行，也就是说当执行到dispatch_semaphore_signal(semaphore)后，任务2就会被执行
            dispatch_semaphore_wait(queue->semaphore, DISPATCH_TIME_FOREVER);
            NSLog(@"GCD sync after");
            run(cdg,queue,msg,isSync);
        }
    }else{
        if (msg && queue->cur == msg) {
            MonitorGCD *gcd = [[MonitorGCD alloc]init];
            gcd->msg = msg;
            gcd->queue = queue;
//            NSData * msgData = [[NSData alloc]initWithBytes:msg length:sizeof(Tmsg)];
//            NSData * queueData = [[NSData alloc]initWithBytes:queue length:sizeof(Queue)];
            NSDictionary *extraDic = @{@"content":gcd};
            NSThread *thread = [[NSThread alloc]initWithTarget:cdg selector:@selector(excute:) object:extraDic];
            [thread setName:@"abcd"];
            [thread start];
        } else {
            dispatch_semaphore_wait(queue->semaphore, DISPATCH_TIME_FOREVER);
            NSLog(@"GCD async after");
            run(cdg,queue,msg,isSync);
        }
    }
    
}
@end

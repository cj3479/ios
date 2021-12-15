//
//  TestLock.m
//  TestBase
//
//  Created by chengjian on 2019/9/20.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestLock.h"
#import <libkern/OSAtomic.h>
#import <pthread.h>
@implementation TestLock
//OS_SPINLOCK_INIT： 默认值为 0,在 locked 状态时就会大于 0，unlocked状态下为 0
//OSSpinLockLock(&oslock)：上锁，参数为 OSSpinLock 地址
//OSSpinLockUnlock(&oslock)：解锁，参数为 OSSpinLock 地址
//OSSpinLockTry(&oslock)：尝试加锁，可以加锁则立即加锁并返回 YES,反之返回 NO
- (void)testOSSpinLock{
    __block OSSpinLock oslock = OS_SPINLOCK_INIT;
    //线程1
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"线程1 准备上锁");
        OSSpinLockLock(&oslock);
        sleep(4);
        NSLog(@"线程1");
        OSSpinLockUnlock(&oslock);
        NSLog(@"线程1 解锁成功");
        NSLog(@"----------------------------");
    });

    //线程2
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"线程2 准备上锁");
        OSSpinLockLock(&oslock);
        NSLog(@"线程2");
        OSSpinLockUnlock(&oslock);
        NSLog(@"线程2 解锁成功");
    });
    
    
}

//● dispatch_semaphore_create(1)： 传入值必须 >=0, 若传入为 0 则阻塞线程并等待timeout,时间到后会执行其后的语句
//● dispatch_semaphore_wait(signal, overTime)：可以理解为 lock,会使得 signal 值 -1
//● dispatch_semaphore_signal(signal)：可以理解为 unlock,会使得 signal 值 +1
-(void)testSemaphore{
    dispatch_semaphore_t signal = dispatch_semaphore_create(0); //传入值必须 >=0, 若传入为0则阻塞线程并等待timeout,时间到后会执行其后的语句
    dispatch_time_t overTime = dispatch_time(DISPATCH_TIME_NOW, 30.0f * NSEC_PER_SEC);

    //线程1
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"线程1 等待ing");
        long result = dispatch_semaphore_wait(signal, overTime);
        NSLog(@"线程1 result=%ld", result);
        sleep(2);
        NSLog(@"线程1 结束休眠");
        dispatch_semaphore_signal(signal); //signal 值 +1
        NSLog(@"线程1 发送信号");
        NSLog(@"-------------------------");
    });
//
//    //线程2
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        NSLog(@"线程2 等待ing");
//        long result = dispatch_semaphore_wait(signal, overTime);
//        NSLog(@"线程2 result=%ld",result);
//        sleep(2);
//        NSLog(@"线程2 结束休眠");
//        dispatch_semaphore_signal(signal);
//        NSLog(@"线程2 发送信号");
//    });
//    //线程3
//     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//         NSLog(@"线程3 等待ing");
//         long result = dispatch_semaphore_wait(signal, overTime);
//         NSLog(@"线程3 result=%ld",result);
//         sleep(2);
//         NSLog(@"线程3 结束休眠");
//         dispatch_semaphore_signal(signal);
//         NSLog(@"线程3 发送信号");
//     });
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        NSLog(@"线程4 等待ing");
//        long result = dispatch_semaphore_wait(signal, overTime);
//        NSLog(@"线程4 result=%ld",result);
//        sleep(2);
//        NSLog(@"线程4 结束休眠");
//        dispatch_semaphore_signal(signal);
//        NSLog(@"线程4 发送信号");
//    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
         NSLog(@"线程5 等待ing");
         sleep(2);
         NSLog(@"线程5 结束休眠");
         long result = dispatch_semaphore_signal(signal);
         NSLog(@"线程5 result=%ld",result);
         long result1 = dispatch_semaphore_signal(signal);
         NSLog(@"线程5 result1=%ld",result1);
         NSLog(@"线程5 发送信号");
     });
}

// pthread_mutex 中也有个pthread_mutex_trylock(&pLock)，和上面提到的 OSSpinLockTry(&oslock)区别在于，前者可以加锁时返回的是 0，否则返回一个错误提示码；后者返回的 YES和NO
-(void)testMutex{
    static pthread_mutex_t pLock;
    pthread_mutex_init(&pLock, NULL);
     //1.线程1
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"线程1 准备上锁");
        pthread_mutex_lock(&pLock);
        sleep(3);
        NSLog(@"线程1");
        pthread_mutex_unlock(&pLock);
    });

    //1.线程2
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"线程2 准备上锁");
        pthread_mutex_lock(&pLock);
        NSLog(@"线程2");
        pthread_mutex_unlock(&pLock);
    });
}

-(void)testNSLock{
    NSLock *lock = [NSLock new];
    //线程1
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSLog(@"线程1 尝试加锁ing...");
            [lock lock];
            sleep(3);//睡眠3秒
            NSLog(@"线程1");
            [lock unlock];
            NSLog(@"线程1解锁成功");
        });
        
    //线程2
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSLog(@"线程2 尝试加锁ing...");
            BOOL x =  [lock lockBeforeDate:[NSDate dateWithTimeIntervalSinceNow:4]];
            if (x) {
                NSLog(@"线程2");
                [lock unlock];
                NSLog(@"线程2解锁成功");
            }else{
                NSLog(@"失败");
            }
        });
}
-(void)testNSCondition{
    NSCondition *cLock = [NSCondition new];
    //线程1
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [cLock lock];
        NSLog(@"线程1加锁成功");
        [cLock wait];
        NSLog(@"线程1");
        [cLock unlock];
    });

    //线程2
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [cLock lock];
        NSLog(@"线程2加锁成功");
        [cLock wait];
        NSLog(@"线程2");
        [cLock unlock];
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        sleep(2);
        NSLog(@"唤醒一个等待的线程");
        [cLock signal];
    });
    //唤醒所有等待的线程
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        sleep(2);
//        NSLog(@"唤醒所有等待的线程");
//        [cLock broadcast];
//    });
}

//递归锁可以被同一线程多次请求，而不会引起死锁。这主要是用在循环或递归操作中。
-(void)testNSRecursiveLock{
    NSRecursiveLock *rLock = [NSRecursiveLock new];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        static void (^RecursiveBlock)(int);
        RecursiveBlock = ^(int value) {
            [rLock lock];
            if (value > 0) {
                NSLog(@"线程%d", value);
                RecursiveBlock(value - 1);
            }
            [rLock unlock];
        };
        RecursiveBlock(4);
    });
}

-(void)testSynchronized{
    //线程1
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            @synchronized (self) {
                sleep(2);
                NSLog(@"线程1");
            }
        });
        
     //线程2
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            @synchronized (self) {
                NSLog(@"线程2");
            }
        });
}

//相比于 NSLock 多了个 condition 参数，我们可以理解为一个条件标示。
-(void)testNSConditionLock{
    NSConditionLock *cLock = [[NSConditionLock alloc] initWithCondition:0];

    //线程1
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        if([cLock tryLockWhenCondition:0]){
            NSLog(@"线程1");
           [cLock unlockWithCondition:1];
        }else{
             NSLog(@"失败");
        }
    });

    //线程2
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [cLock lockWhenCondition:3];
        NSLog(@"线程2");
        [cLock unlockWithCondition:2];
    });

    //线程3
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [cLock lockWhenCondition:1];
        NSLog(@"线程3");
        [cLock unlockWithCondition:3];
    });
}
@end

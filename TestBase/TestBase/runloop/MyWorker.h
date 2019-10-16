//
//  MyWorker.h
//  TestBase
//
//  Created by chengjian on 2019/9/25.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kMsg1 100
#define kMsg2 101
NS_ASSUME_NONNULL_BEGIN
@interface MyWorker : NSObject<NSMachPortDelegate>{
    NSPort *remotePort;
    NSPort *myPort;
}
+(void)LaunchThreadWithPort:(id)inData;
@end

NS_ASSUME_NONNULL_END

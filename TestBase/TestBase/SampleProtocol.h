//
//  SampleProtocol.h
//  TestApp1
//
//  Created by chengjian on 2019/5/23.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#define QBM_ADD_SECTION_DATA(sectname) __attribute((used, section("__DATA," #sectname " ")))

#define QBM_EXPORT_MODULE_PROTOCOL(protocolName, impl) \
    char* k##protocolName##_service QBM_ADD_SECTION_DATA(QBModuleImpl) = "" #protocolName ":" #impl "";
// 协议定义
@protocol SampleProtocolDelegate <NSObject>
@required
- (void) processCompleted;
@optional
- (void) processCompletedssss;
@end
// 协议定义结束
@interface SampleProtocol : NSObject

{
//    // Delegate to respond back
//    id <SampleProtocolDelegate> _delegate;
    
}
@property (nonatomic,strong) id delegate;

-(void)startSampleProcess; // Instance method

@end


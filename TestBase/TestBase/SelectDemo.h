//
//  SelectDemo.h
//  TestBase
//
//  Created by chengjian on 2019/6/4.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SelectDemo : NSObject{
    SEL _methodTest;
}
@property(nonatomic,assign) SEL methodTest;
-(void)TestParentMethod;
-(void)TestSubMethod;
@end

NS_ASSUME_NONNULL_END

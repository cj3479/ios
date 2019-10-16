//
//  RIJIEAdUIHandlerFactory.h
//  QQMainProject
//
//  Created by chengjian on 2019/8/8.
//  Copyright © 2019 tencent. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface RIJIEAdUIHandlerParam : NSObject
@property (nonatomic, assign) BOOL  isTopCoordinate;//是否以上边缘计算移动
@end

@interface RIJIEAdBaseUIHandler : NSObject
- (void)initUI;
@end

/**
 * 随心互动广告UI处理器的工厂
 */
@interface RIJIEAdUIHandlerFactory : NSObject
+(RIJIEAdBaseUIHandler *) getRIJIEAdBaseUIHandler;
@end


/**
 * 随心互动广告-透明度交互的UI处理器
 */
@interface RIJIEAdAlphaUIHandler : RIJIEAdBaseUIHandler
@end


/**
 * 随心互动广告-缩放交互的UI处理器
 */
@interface RIJIEAdScaleUIHandler : RIJIEAdBaseUIHandler
@end

/**P
 * 随心互动广告-水平移动交互的UI处理器
 */
@interface RIJIEAdHorizontalMoveUIHandler : RIJIEAdBaseUIHandler
@end

NS_ASSUME_NONNULL_END

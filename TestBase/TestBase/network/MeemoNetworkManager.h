//
//  MeemoNetworkManaget.h
//  TestBase
//
//  Created by chengjian on 2021/11/17.
//  Copyright © 2021 chengjian. All rights reserved.
//
#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface MeemoNetworkManager : NSObject
+ (MeemoNetworkManager *_Nonnull)sharedInstance;
- (void)initEnv:(int)env;
- (void)get:(NSString *)path param:(NSDictionary *_Nullable)param success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
    failure:(nullable void (^)(NSURLSessionDataTask *_Nullable task, NSError *error))failure;
- (void)post:(NSString *)path param:(NSDictionary *_Nullable)param success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
     failure:(nullable void (^)(NSURLSessionDataTask *_Nullable task, NSError *error))failure;
@end
NS_ASSUME_NONNULL_END

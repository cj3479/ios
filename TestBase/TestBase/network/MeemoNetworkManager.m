//
//  MeemoNetworkManaget.m
//  TestBase
//
//  Created by chengjian on 2021/11/17.
//  Copyright © 2021 chengjian. All rights reserved.
//

#import "MeemoNetworkManager.h"
#import "AFHTTPSessionManager.h"
static NSString *const kDevHost = @"https://tapi.club.gpubgm.com";
static NSString *const kBetaHost = @"https://papi.club.gpubgm.com";
static NSString *const kReleaseHost = @"https://api.club.gpubgm.com";
static NSString *const kUrlPath = @"/live/streamer/info";
@implementation MeemoNetworkManager
{
    NSDictionary *commmnonParam;
    NSURLSessionConfiguration *commmnonConfiguration;
    NSString *hostUrl;
}
+ (MeemoNetworkManager *)sharedInstance {
    static dispatch_once_t onceToken;
    static MeemoNetworkManager *sharedInstance;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[MeemoNetworkManager alloc] init];
    });
    return sharedInstance;
}

- (void)initEnv:(int)env {
    switch (env) {
        case 0:
            hostUrl = kDevHost;
            break;
        case 1:
            hostUrl = kBetaHost;
            break;
        case 2:
            hostUrl = kReleaseHost;
            break;
        default:
            hostUrl = kDevHost;
            break;
    }
}

- (NSDictionary *)commmnonParam {
    if (nil == commmnonParam) {
        commmnonParam = @{ @"openid": @"2002585678906669", @"uid": @"51204699526", @"ticket": @"edywJpz_SrWe5suuZXJUb2tlbiI6IjA1YTA2YmFhZmE4NTY5MzdmYzE1ZmU1NzhmMDA0ZDExIiwiaU9wZW5pZCI6MjAwMjU4NTY3ODkwNjY2OSwiaUdhbWVJZCI6MTMyNSwiaUNUaW1lIjoxNjI0MzUxNDI0LCJzRW52IjoicmVsZWFzZV9uYV9pZ2FtZSJ9", @"lang": @"zh", @"region": @"CN", @"ipregion": @"CN", @"appversion": @"1111", @"appid": @"103", @"os": @"1" };
    }
    return commmnonParam;
}

- (NSURLSessionConfiguration *)commmnonConfiguration {
    if (nil == commmnonConfiguration) {
        commmnonConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
        commmnonConfiguration.timeoutIntervalForRequest = 20;
        commmnonConfiguration.timeoutIntervalForResource = 40;
        commmnonConfiguration.HTTPAdditionalHeaders = [self commmnonParam];
    }
    return commmnonConfiguration;
}

- (void)get:(NSString *)path param:(NSDictionary *)param success:(void (^)(NSURLSessionDataTask *_Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask *_Nullable, NSError *_Nonnull))failure {
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:[self commmnonConfiguration]];
    [manager GET:[hostUrl stringByAppendingString:kUrlPath] parameters:param headers:nil progress:nil success:^(NSURLSessionDataTask *_Nonnull task, id _Nullable responseObject) {
        success(task, responseObject);
    } failure:^(NSURLSessionDataTask *_Nullable task, NSError *_Nonnull error) {
        failure(task, error);
    }];
}

- (void)post:(NSString *)path param:(NSDictionary *)param success:(void (^)(NSURLSessionDataTask *_Nonnull, id _Nullable))success failure:(void (^)(NSURLSessionDataTask *_Nullable, NSError *_Nonnull))failure {
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:[self commmnonConfiguration]];
    [manager POST:[hostUrl stringByAppendingString:path] parameters:param headers:nil progress:nil success:^(NSURLSessionDataTask *_Nonnull task, id _Nullable responseObject) {
        if (success) {
            success(task, responseObject);
        }
    } failure:^(NSURLSessionDataTask *_Nullable task, NSError *_Nonnull error) {
        if (failure) {
            failure(task, error);
        }
        NSLog(@"Meemo post error=%@", error);
    }];
}

@end

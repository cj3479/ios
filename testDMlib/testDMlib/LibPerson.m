//
//  LibPerson.m
//  testDMlib
//
//  Created by chengjian on 2019/6/3.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "LibPerson.h"
//#import "AFURLSessionManager.h"
@implementation LibPerson

+(void)load{
   NSLog(@"load DMlib.....");
}
- (void)eat{
    NSLog(@"eating....sfdsfsdfsdfsd.start");
    sleep(1);
    NSLog(@"eating....dsfdfd.start");
//    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
//    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
//
//    NSURL *URL = [NSURL URLWithString:@"http://example.com/upload"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//
//    NSURL *filePath = [NSURL fileURLWithPath:@"file://path/to/image.png"];
//    NSURLSessionUploadTask *uploadTask = [manager uploadTaskWithRequest:request fromFile:filePath progress:nil completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
//        if (error) {
//            NSLog(@"Error: %@", error);
//        } else {
//            NSLog(@"Success: %@ %@", response, responseObject);
//        }
//    }];
//    [uploadTask resume];
    NSLog(@"eating.....start");
    sleep(1);
    NSLog(@"eating.....start");
}
- (void)watch{
    NSLog(@"watchaaaa.....DMlib");
}
@end

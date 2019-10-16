//
//  SFArchiveFileFactory.h
//  ArchiveALL
//
//  Created by songfei on 14-3-4.
//  Copyright (c) 2014年 songfei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SFBaseArchive.h"

@interface SFArchiveFileFactory : NSObject

+ (SFBaseArchive*)openFile:(NSString*)path fileExtension:(NSString*)fileExtension;
+ (SFBaseArchive*)openFile:(NSString*)path;

@end

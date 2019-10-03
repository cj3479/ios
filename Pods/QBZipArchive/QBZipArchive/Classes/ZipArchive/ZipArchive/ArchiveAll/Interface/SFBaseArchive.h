//
//  SFBaseArchiveInterface.h
//  ArchiveALL
//
//  Created by songfei on 14-2-13.
//  Copyright (c) 2014年 songfei. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SFArchiveExtractResult)
{
    SFArchiveExtractResult_OK,
    SFArchiveExtractResult_OpenArchiveFileError,
    SFArchiveExtractResult_ReadArchiveFileError,
    SFArchiveExtractResult_CompressionFileError,
    SFArchiveExtractResult_DecompressionFileError,
    SFArchiveExtractResult_SearchFileError,
    SFArchiveExtractResult_PasswordError,
    SFArchiveExtractResult_UnknownError,
};

typedef void(^SFArchiveProgressBlock)(float);

@interface SFBaseArchive : NSObject

@property (nonatomic,strong) NSString* filePath;
@property (nonatomic,strong) NSString* password;
@property (nonatomic,strong) SFArchiveProgressBlock progressBlock;

- (instancetype)initWithFilePath:(NSString*)filePath;

- (NSArray*)listFileItem;
- (void)extractFileItem:(NSString*)fileItem destPath:(NSString*)destPath destName:(NSString*)destName finish:(void(^)(SFArchiveExtractResult))finishBlock;
- (BOOL)isCrypted;
- (BOOL)canDecrypt;
@end

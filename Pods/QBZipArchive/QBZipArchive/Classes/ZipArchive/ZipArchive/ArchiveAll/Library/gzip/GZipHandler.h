//
//  GZipHandler.h
//  ArchiveALL
//
//  Created by zuckchen on 8/24/15.
//  Copyright (c) 2015 songfei. All rights reserved.
//

#ifndef __ArchiveALL__GZipHandler__
#define __ArchiveALL__GZipHandler__

#include <stdio.h>
#include <zlib.h>

int inflateHeader_iOS(FILE *source, Bytef *name, uLong *time, uLong *size);
int inflate_iOS(FILE *source, FILE *dest);

#endif /* defined(__ArchiveALL__GZipHandler__) */

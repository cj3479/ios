// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import "ios_context_metal.h"
#import "scoped_nsobject.h"
#import "TestMRC.h"
IOSContextMetal::IOSContextMetal()
{
//    NSLog(@"chengjian_test IOSContextMetal create darwin_context_metal_ =%p",(void *)darwin_context_metal_);
//    TestMRC *testMRc =[[TestMRC alloc] init];
//    TestMRC *testMRc1 =testMRc;
//    TestMRC *testMRc2 =testMRc1;
    int aa =100;
    int bb =100;
    NSLog(@"chengjian_test aa=%d",aa);
    scoped_nsobject<TestMRC>([[TestMRC alloc] init]);
//    darwin_context_metal_ = scoped_nsobject<TestMRC>(testMRc);
//    scoped_nsobject<TestMRC>(testMRc);
//
//    if (!darwin_context_metal_) {
//        return;
//    }
//    TestMRC *testRc = [[[TestMRC alloc] init] retain];
//    TestMRC *testRc = darwin_context_metal_.get();
//    TestMRC *testRc1 = darwin_context_metal_.get();
//    NSLog(@"chengjian_test IOSContextMetal count = %ld", RC(testMRc2));
//    [testRc autorelease];
//    [testRc autorelease];
//    [testRc release];
//    main_command_queue_.reset([darwin_context_metal_.get().commandQueue retain]);
//
//    CVMetalTextureCacheRef texture_cache_raw = NULL;
//    auto cv_return = CVMetalTextureCacheCreate(kCFAllocatorDefault, // allocator
//                                               NULL, // cache attributes (NULL default)
//                                               darwin_context_metal_.get().device, // metal device
//                                               NULL, // texture attributes (NULL default)
//                                               &texture_cache_raw // [out] cache
//                                               );
//    if (cv_return != kCVReturnSuccess) {
//        FML_DLOG(ERROR) << "Could not create Metal texture cache.";
//        return;
//    }
//    texture_cache_.Reset(texture_cache_raw);
}

//+(NSObject *) testReturnObjB
//{
////    TestMRC *mrc  = [[TestMRC alloc]init];
//    NSObject *obj = [[NSObject alloc]init];
////    mrc.obj = obj;
////    NSLog(@"retain testReturnObjB MRC 0 mrc count =%ld\n",(unsigned long)[obj retainCount]);
////    [obj release];
////    NSLog(@"retain testReturnObjB MRC 1 mrc count =%ld\n",(unsigned long)[obj retainCount]);
////    [obj release];
//    return obj;
//}
void IOSContextMetal::testMsg()
{
    NSLog(@"chengjian_test IOSContextMetal testMsg %p", this);
}

IOSContextMetal::~IOSContextMetal()
{
//    TestMRC *testRc = darwin_context_metal_.get();
//    [testRc release];
//    NSLog(@"chengjian_test IOSContextMetal count = %ld", RC(testRc));
    NSLog(@"chengjian_test IOSContextMetal销毁 %p", this);
}

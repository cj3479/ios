// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef FLUTTER_SHELL_PLATFORM_DARWIN_IOS_IOS_CONTEXT_METAL_H_
#define FLUTTER_SHELL_PLATFORM_DARWIN_IOS_IOS_CONTEXT_METAL_H_
#define FML_DISALLOW_COPY_AND_ASSIGN(TypeName) \
    TypeName(const TypeName&) = delete;          \
    TypeName& operator = (const TypeName&) = delete
#include <Metal/Metal.h>
#import "TestMRC.h"
#import "scoped_nsobject.h"
class IOSContextMetal final {
public:
    IOSContextMetal();
    void testMsg();
    ~IOSContextMetal();

//scoped_nsobject<TestMRC> GetDarwinContext() const;
//
//// |IOSContext|
//sk_sp<GrDirectContext> GetMainContext() const override;
//
//sk_sp<GrDirectContext> GetResourceContext() const;

private:
    scoped_nsobject<TestMRC> darwin_context_metal_;
//  fml::scoped_nsprotocol<id<MTLCommandQueue>> main_command_queue_;
//  fml::CFRef<CVMetalTextureCacheRef> texture_cache_;
//
//  // |IOSContext|
//  sk_sp<GrDirectContext> CreateResourceContext() override;
//
//  // |IOSContext|
//  std::unique_ptr<GLContextResult> MakeCurrent() override;
//
//  // |IOSContext|
//  std::unique_ptr<Texture> CreateExternalTexture(
//      int64_t texture_id,
//      fml::scoped_nsobject<NSObject<FlutterTexture>> texture) override;

//FML_DISALLOW_COPY_AND_ASSIGN(IOSContextMetal);
};

#endif  // FLUTTER_SHELL_PLATFORM_DARWIN_IOS_IOS_CONTEXT_METAL_H_

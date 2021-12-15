//
//  main.m
//  TestBuildSetting
//
//  Created by chengjian on 2019/12/23.
//  Copyright © 2019 tencent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
//#import "TestStaticLib/TestExterStaticLib.h"
//#import "TestStaticLib/TestExterStaticLib+TestExterStaticlibCategory.h"
//#import "TestStaticLib/TestMockHeader+TestExterStLibMockCato.h"
//#import "TestStaticLib/NSObject+TestESLibNSObject.h"
#import "TestExternalDMLib/TestExternalDMLib.h"
//#import "TestExternalStaticFW/TestExternalStaticFW.h"
//#import "TestNoUserBS.h"
//#import "AddressBook/ABAddressBook.h"
#import <TestUserHeader.h>
#import "NSObject+TestDummyCategory.h"
//#import "TestExternalDMLib.h"
//#import "TestExterStaticFwHasUse.h"
int main(int argc, char * argv[]) {
    NSLog(@"chengjian main aabb=%d",aabb);
    NSObject *obj = [[NSObject alloc]init];
    [obj testObjec];
//    NSLog(@"chengjian main vv=%d,testESfw_aa=%d",vvs);
//    TestNoUserBS *ns = [[TestNoUserBS alloc] init];
//     NSLog(@"chengjian main ns=%@",ns);
//    [ns testNoUserBS_member];
////    TestExterStaticLib *testStaticLib = [[TestExterStaticLib alloc]init];
////    [testStaticLib testStaticlibCategory];
////    NSLog(@"chengjian main testStaticLib=%@",testStaticLib);
////    NSObject *obj = [[NSObject alloc] init];
////    [obj testESLibNSObjectBB];
    TestExternalDMLib * testExternalDMLib = [[TestExternalDMLib alloc]init];
//    [testExternalDMLib testExternalDMLibCC];
    NSLog(@"chengjian main testExternalDMLib=%@",testExternalDMLib);
//    TestExternalStaticFW * testExternalStaticFW = [[TestExternalStaticFW alloc]init];
//    NSLog(@"chengjian main testExternalStaticFW=%@",testExternalStaticFW);
//    TestMockHeader *mock = [[TestMockHeader alloc]init];
//     [mock testMockHeaderBBAA];
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

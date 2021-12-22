//
//  main.m
//  TestApp1
//
//  Created by chengjian on 2019/5/23.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"
#import "Person+NewFunction.h"
#import "MyObject.h"
#import "SelectorSub.h"
//#import "teststaticlib.h"
//#import "testFWStatic/teststaticlib.h"
//#import "testFWStatic/testFWStatic.h"
//#import "testDMlib/LibPerson.h"
#import "LibPerson.h"
#import "TestThread.h"
#import "MonitorGCD.h"
//#import "TestAFnetworking.h"
#import "swizzle/Person+swizzle.h"
#import "swizzle/TestAdd.h"
#import "swizzle/TestViewController+appear.h"
//#import "LzmaSDKObjCReader.h"
#include "compression.h"
//#include "testDMlib/TestStaticlib2.h"
//#include <string>
//using namespace std;
//#import "Flutter/Flutter.h"
//#import "TestDMlib2/TestDMlib2.h"
//#import "TestDMlib2/TestDMlib2.h"
//#import "TestDependceStatic/TestDependceStatic.h"
//#import "TestBase-Swift.h"
#import  "TestSampleProtocolSub.h"
#import <objc/runtime.h>
//#import "TestExternalDMLib/TestExternalDMLib.h"
//#import "TestStaticLib/TestExterStaticLib.h"
//#import "TestStaticLib/TestExterStaticLib.h"
//#import "testDMlib/TestDMLIb1.h"
//#import "TestViewControllerAA.h"

//#import "AFURLSessionManager.h"
#import "TestPersonSubOne.h"
#import "TestPersonSubTwo.h"
#import "TestLock.h"
#import "runtime/TestRuntime.h"
#import <JavaScriptCore/JavaScriptCore.h>
typedef unsigned long long QUINT64;
#define FBKVOKeyPath(KEYPATH) \
    @(((void)(NO && ((void)KEYPATH, NO)), \
       ({ const char *fbkvokeypath = strchr(#KEYPATH, '.'); NSCAssert(fbkvokeypath, @"Provided key path is invalid."); fbkvokeypath + 1; })))
typedef NS_ENUM (NSUInteger, RIJShortVideoRequestState) {
    RIJShortVideoRequestStateLoading,
    RIJShortVideoRequestStateNoData,
    RIJShortVideoRequestStateError,
    RIJShortVideoRequestStateSuccess,
};
extern int externInt = 10;
//static NSDictionary* const clickPosDic = @{@"ProteusEventCmdAdLargeImgClick":@"ww"};
void testThreadMethod()
{
    TestThread *testThread = [[TestThread alloc]init];
    [testThread startThread];
}

void testNSThread()
{
    TestThread *testThread = [[TestThread alloc]init];
    [testThread testNSThread];
}

void testNSGCD()
{
    TestThread *testThread = [[TestThread alloc]init];
    [testThread testGCD];
}

void testMonitorGCD()
{
    TestThread *testThread = [[TestThread alloc]init];
    [testThread testMonitorGCD];
}

#define FBKVOKeyPath(KEYPATH) \
    @(((void)(NO && ((void)KEYPATH, NO)), \
       ({ const char *fbkvokeypath = strchr(#KEYPATH, '.'); fbkvokeypath + 1; })))
typedef unsigned long long QUINT64;
typedef unsigned int       QUINT32;
//BigCellType枚举
typedef NS_ENUM (QUINT64, BigCellType) {
    BigCellType_InterActive = 2, //随心互动类型广告
};
#define AA 1

void showAllFileWithPath(NSString * path) {
    NSFileManager * fileManger = [NSFileManager defaultManager];
    BOOL isDir = NO;
    BOOL isExist = [fileManger fileExistsAtPath:path isDirectory:&isDir];
    if (isExist) {
        if (isDir) {
            NSArray * dirArray = [fileManger contentsOfDirectoryAtPath:path error:nil];
            NSString * subPath = nil;
            for (NSString * str in dirArray) {
                subPath  = [path stringByAppendingPathComponent:str];
                if([subPath hasSuffix:@"ios.jsbundle"]){
                    NSLog(@"chengjian subPath=%@",subPath);
                    NSString *zipFilePath = [subPath stringByAppendingString:@".7z"];
                    NSData *fileData = [NSData dataWithContentsOfFile:subPath];
                    uint8_t dstBuffer[fileData.length];
                    memset(dstBuffer, 0, fileData.length);

                    size_t compressResultLength = compression_encode_buffer(dstBuffer, fileData.length, [fileData bytes], fileData.length, NULL, COMPRESSION_LZMA);
                    if(compressResultLength > 0) {
                        NSData *dataAfterCompress = [NSData dataWithBytes:dstBuffer length:compressResultLength];
                        NSLog(@"Compress successfully. After compress：%lu bytes", (unsigned long)dataAfterCompress.length);
                        // Write compressed data into file.
                        [dataAfterCompress writeToFile:zipFilePath atomically:YES];
                    } else {
                        NSLog(@"Compress FAILED!!!");
                    }
                }
                BOOL issubDir = NO;
                [fileManger fileExistsAtPath:subPath isDirectory:&issubDir];
                showAllFileWithPath(subPath);
            }
        }else{
            NSString *fileName = [[path componentsSeparatedByString:@"/"] lastObject];
            if ([fileName hasSuffix:@".m"]) {
                //do anything you want
            }
        }
    }else{
        NSLog(@"this path is not exist!");
    }
}

//class MyTest
//
//{
//
//public:
//
//    MyTest();
//
//    void Print();
//
//};
//
//
//
//MyTest::MyTest()
//
//{
//
//}
//
//void MyTest::Print()
//
//{
//    std("MyTest::Print!\n");
//}
//#define AAA 10
#import "TestBase-Swift.h"
//#import "MeemoSdk/MeemoSdk.h"
void test(){
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            NSLog(@"chengjian_dispatch_after");
        test();
    });
}

int main(int argc, char *argv[])
{
//    TestLiveConfig *sc = [[TestLiveConfig alloc] init];
//    NSLog(@"chengjian_test sc=%@", sc);
//    [sc sayWithName:@""];
    SwiftClass *scaa = [[SwiftClass alloc] init];
    NSLog(@"chengjian_test scaa=%@", scaa);
//    [scaa sayWithName:@""];
//    LiveConfig *config = [[LiveConfig alloc] init];
//    unsigned int methodCount = 0;
//    Method *methodList = class_copyMethodList([SwiftClass class], &methodCount);
//    NSMutableArray *methodArray = [NSMutableArray arrayWithCapacity:methodCount];
//    int iInt1 = (int)methodCount;
//    for (int i = 0; i < iInt1; i++) {
//        Method temp = methodList[i];
//        SEL name_F = method_getName(temp);
//        const char *name_s = sel_getName(name_F);
////            int arguments = method_getNumberOfArguments(temp);
//        const char *encoding = method_getTypeEncoding(temp);
//        NSLog(@"chengjian_test flutterEgine dealloc  name_s=%s encoding=%s", name_s,encoding);
//        //  NSLog(@"MethodName: %@,ArgumentCount: %d,EncodingStyle: %@",[NSString stringWithUTF8String:name_s],arguments,[NSString stringWithUTF8String:encoding]);
//        [methodArray addObject:[NSString stringWithUTF8String:name_s]];
//    }
//    if ([sc respondsToSelector:@selector(sayWithName:)]) {
//        NSLog(@"chengjian_test sayWithName");
//    }
//    if ([sc respondsToSelector:@selector(registerWithRegistrar:)]) {
//        NSLog(@"chengjian_test registerWithRegistrar 111");
//    }
//    if ([sc respondsToSelector:@selector(registerWithARegistrar:)]) {
//        NSLog(@"chengjian_test registerwithARegistrar 111");
//    }
//    SEL name_F = @selector(registerWithARegistrar:);
//    NSLog(@"chengjian_test registerwithARegistrar 111 %@",name_F);
//    [sc registerWithRegistrar:nil];
       //系统已经把Swift方法转化为了OC方法
//   NSString *strsadasd = [sc registerWithRegistrar:nil];
//   NSLog(@"%@",strsadasd);
    TestRuntime *runtime = [[TestRuntime alloc] init];
    [runtime testAA];
//    id *dd = [runtime testAAsss];
//    NSLog(@"chengjian_test  %@",dd);
    id result = [runtime compare:@"dddd"];
    NSLog(@"chengjian_test  result=%d",result);
//    [TestRuntime testStatic];
//    [TestRuntime testStaticAA];
//  JSContext *jsContext  = [[JSContext alloc] init];
//    [jsContext evaluateScript:@"var console = {}"];
//    jsContext[@"console"][@"log"] = ^(NSString *message) {
//        NSLog(@"Javascript log: %@",message);
//    };
    JSContext *jsContext = [[JSContext alloc] init];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"11" ofType: @"js"];
        NSString *layoutJS = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
        [jsContext evaluateScript:layoutJS];
//
        JSValue *subtractFunc = jsContext[@"subtractFunc"];
        JSValue *subtractResult = [subtractFunc callWithArguments:@[@20, @10]];
        NSLog(@"Javascript %d", subtractResult.toInt32);
    JSContext *context = [JSContext new];
    JSValue *value1 = [context evaluateScript:@"2+2"];
    NSLog(@"chengjian %@",value1);
    TestLock *lock = [TestLock new];
    [lock testSemaphore];
    NSMutableDictionary *mpExtParams = [[NSMutableDictionary alloc]init];
    [mpExtParams setValue:@"QBFeeds_videoFeeds_UI205" forKey:@"style_ID"];
    NSMutableDictionary *firstVideo = [[NSMutableDictionary alloc]init];
    [firstVideo addEntriesFromDictionary:mpExtParams];
    [firstVideo setValue:@"QBFeeds_videoFeeds_UI208" forKey:@"style_ID"];
    int abc1 = [(NSString *)mpExtParams[@"dsf"] intValue];
    
    NSURL *url = [NSURL URLWithString:@"http://cdn.read.html5.qq.com/image?src=video_hot&q=5&h=352&w=704&r=0&imageUrl=http%3A%2F%2Fpuui.qpic.cn%2Fqqvideo_ori%2F0%2Fy3048tn0ohq_1280_720%2F0"];
    NSURLComponents *urlComponents = [NSURLComponents componentsWithURL:url resolvingAgainstBaseURL:NO];

    // url中参数的key value
    NSMutableDictionary *parameter = [NSMutableDictionary dictionary];
    NSURLComponents *urlComponents1 = [NSURLComponents componentsWithURL:url resolvingAgainstBaseURL:YES];
    for (NSURLQueryItem *item in urlComponents.queryItems) {
        [parameter setValue:item.value forKey:item.name];
    }
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        sleep(1);
        NSLog(@"chengjian 111111111");
    });
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
         NSLog(@"chengjian 222222");
     });
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        sleep(1);
         NSLog(@"chengjian 333333");
     });
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
         NSLog(@"chengjian 4444444");
     });
    NSMutableArray *result0 = [NSMutableArray arrayWithCapacity:10];
    [result0 addObject:@"One"];
    [result0 addObject:@"Two"];
    NSMutableArray* result1 =[result0 copy];
    [result0 removeObjectAtIndex:0];
    TestPersonSubOne *one = [[TestPersonSubOne alloc]init];
    [one testPersonCatogoryOne];
    TestPersonSubTwo *two = [[TestPersonSubTwo alloc]init];
    [two testPersonCatogoryOne];
    TestSampleProtocolSub *sub = [[TestSampleProtocolSub alloc]init];
    bool hahha = [sub conformsToProtocol:@protocol(SampleProtocolDelegate)];
    bool hahha2 = [sub conformsToProtocol:@protocol(SampleProtocolDelegate2)];
    char * ds2="12345";
    
//    TestDependceStatic *ff = [[TestDependceStatic alloc]init];
////    TestExternalDMLib *lib = [[TestExternalDMLib alloc]init];
////    NSLog(@"chengjian lib=%@",lib);
//    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
//    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
//    NSLog(@"chengjian manager=%@",manager);
//    
////    TestExterStaticLib *testStaticLib = [[TestExterStaticLib alloc]init];
////    [lib testDependce];
//    TestDMlib2 *dmlib2 = [[TestDMlib2 alloc]init];
//    TestDMLIb1 *testDMLIb1 = [[TestDMLIb1 alloc]init];
//    NSLog(@"chengjian testDMLIb1=%@",testDMLIb1);
//    string str = "i test ";
//
//       NSLog(@"%s",str.c_str());
//
//       MyTest* pTest = new MyTest;
//
//       pTest->Print();
//    auto_ptr<Test> ptest(new Test("123"));
//    ptest->setStr("hello ");
//    ptest->print();
//    ptest.get()->print();
//    ptest->getStr() += "world !";
//    (*ptest).print();
//    ptest.reset(new Test("123"));
//    ptest->print();
//    NSString *docDir11 = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
//    NSString *folderPath =[NSString stringWithFormat:@"%@/res/rn/" ,docDir11];
//    NSFileManager *fileManager = [NSFileManager defaultManager];
//    if(![fileManager fileExistsAtPath:folderPath]){
//        [fileManager createDirectoryAtPath:folderPath withIntermediateDirectories:YES attributes:nil error:nil];
//    }
    // Data source file path.
//    NSString *sourceFilePath = [NSString stringWithFormat:@"%@/rn/circle/index.ios.jsbundle",[[NSBundle mainBundle]bundlePath]];
//    NSString *sourceFilePath = [NSString stringWithFormat:@"%@/index.ios.jsbundle",[[NSBundle mainBundle]bundlePath]];
//    showAllFileWithPath([NSString stringWithFormat:@"%@/rn",[[NSBundle mainBundle]bundlePath]]);
////    NSString*documentPath =NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES).firstObject;
////
////    // Compressed file path.
//    NSString *zipFilePath = [sourceFilePath stringByAppendingString:@".7z"];
////   NSString *zipFilePath = [NSString stringWithFormat:@"%@/index.ios.jsbundle.7z",[[NSBundle mainBundle]bundlePath]];
////
//    NSData *fileData = [NSData dataWithContentsOfFile:sourceFilePath];
////    NSLog(@"Before compress: %ld bytes", fileData.length);
//
//    uint8_t dstBuffer[fileData.length];
//    memset(dstBuffer, 0, fileData.length);
//
//    size_t compressResultLength = compression_encode_buffer(dstBuffer, fileData.length, [fileData bytes], fileData.length, NULL, COMPRESSION_LZMA);
//    if(compressResultLength > 0) {
//        NSData *dataAfterCompress = [NSData dataWithBytes:dstBuffer length:compressResultLength];
//        NSLog(@"Compress successfully. After compress：%ld bytes", dataAfterCompress.length);
//        // Write compressed data into file.
//        [dataAfterCompress writeToFile:zipFilePath atomically:YES];
//    } else {
//        NSLog(@"Compress FAILED!!!");
//    }
//    free(dstBuffer);
//    NSLog(@"compress end");
//    sleep(3);
//    NSLog(@"compress end11");
    // Compressed file path.
//     NSString *destFilePath = [[NSBundle mainBundle]bundlePath];
//    NSLog(@"decompress start");
//    NSString *destFilePath = [NSString stringWithFormat:@"%@_1111111",zipFilePath];
//    NSString *docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
//    NSString *destFilePath = [NSString stringWithFormat:@"%@/111.index.ios.jsbundle",docDir];
//    NSString *destPath =[zipFilePath stringByDeletingLastPathComponent];
//    uint8_t *destBuffer = (uint8_t *)malloc(1024*1024*3);
//    NSData *sourceData = [NSData dataWithContentsOfFile:zipFilePath];
//    NSLog(@"Before decompress sourceData: %ld bytes", sourceData.length);
////    uint8_t sourceBuffer[sourceData.length];
////    memset(sourceBuffer, 0, sourceData.length);
//    memset(destBuffer, 0, sourceData.length);
//    size_t decompressLen =compression_decode_buffer(destBuffer,1024*1024*3,sourceData.bytes,sourceData.length,NULL, COMPRESSION_LZMA);
//    NSLog(@"Before decompress length: %ld bytes", decompressLen);
//    if (decompressLen > 0) {
//        NSData *newData = [NSData dataWithBytes:destBuffer length:decompressLen];
//        [newData writeToFile:destFilePath atomically:YES];
//        NSLog(@"decompress: %ld",decompressLen);
//
//    }else{
//        NSLog(@"decompressLen error!");
//    }
//    free(destBuffer);
//    BOOL result = [[NSFileManager defaultManager] fileExistsAtPath:destFilePath];
//     NSLog(@"这个文件已经存在：%@",result?@"是的":@"不存在");
//    NSLog(@"decompress end");
//    [NSThread currentThread] s
    // Select full path to archive file with 7z extension.
//    NSString * archivePath = @"index.ios.jsbundle.7z";

//    // 1.1 Create and hold strongly reader object.
//    LzmaSDKObjCReader *reader = [[LzmaSDKObjCReader alloc] initWithFileURL:[NSURL fileURLWithPath:archivePath]];
    // 1.2 Or create with predefined archive type if path doesn't containes suitable extension
//    LzmaSDKObjCReader *reader = [[LzmaSDKObjCReader alloc] initWithFileURL:[NSURL fileURLWithPath:archivePath]
//                             andType:LzmaSDKObjCFileType7z];
//    NSError * error = nil;
//    if (![reader open:&error]) {
//        NSLog(@"Open error: %@", error);
//    }
//    NSLog(@"Open error: %@", reader.lastError);
    // Optionaly: assign weak delegate for tracking extract progress.
//    reader.delegate = self;

    // If achive encrypted - define password getter handler.
    // NOTES:
    // - Encrypted file needs password for extract process.
    // - Encrypted file with encrypted header needs password for list(iterate) and extract archive items.
//    _reader.passwordGetter = ^NSString*(void){
//        return @"password to my achive";
//    };
//    TestViewControllerAA *vc = [[TestViewControllerAA alloc]init];
//    NSLog(@"chengjian vc = %@",vc);
//    int abc = AAA;
//        #ifdef DDD
//        NSLog(@"main: %d", CCC);
//        #else
//        NSLog(@"main111: %d", AA);
//        #endif
//    #ifdef CCC
//    NSLog(@"main: %d", CCC);
//    #else
//    NSLog(@"main111: %d", AA);
//    #endif
//        #if DDD
//       NSLog(@"main11: %d", abc);
//       #else
//       NSLog(@"main22: %d", AAA);
//       #endif

//    TestAFnetworking *af = [[TestAFnetworking alloc]init];
//    [af testAFDownload];
//    [NSJSONSerialization swizzleClassMethod:@selector(dataWithJSONObject:options:error:) withClassMethod:@selector(qgw_dataWithJSONObject:options:error:)];
    NSMutableDictionary *funcExtInfo = [NSMutableDictionary new];
    [funcExtInfo setValue:@"abcd" forKey:@"source_id"];
    [funcExtInfo setValue:@"abcd" forKey:@"platform_id"];
    [funcExtInfo setValue:@"abcd" forKey:@"goods_type"];
    [funcExtInfo setValue:@(1) forKey:@"card_style"];
    [funcExtInfo setValue:@(1) forKey:@"action_type"];
    //    [funcExtInfo setValue:@(2) forKey:@"button_state"];

    [funcExtInfo setValue:@"11111" forKey:@"goods_id"];
    [funcExtInfo setValue:@"" forKey:@"goods_name"];
    [funcExtInfo setValue:@"222222222" forKey:@"account_id"];
    [funcExtInfo setValue:@(1) forKey:@"content_type"];     //图集0，视频1
    //根据后台要求删除口径曝光，后台默认值是1
    //    [funcExtInfo setValue:@(2) forKey:@"stat_type"]; //1--严口径曝光，2--宽口径曝光
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:funcExtInfo options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];

    NSUInteger indexs31[] = { 1, 2, 3 };
    NSIndexPath *threeNodeIndexPath = [NSIndexPath indexPathWithIndexes:indexs31 length:3];
    NSLog(@"jsonStr=%@,funcExtInfo=%@,jsonStr.UTF8String=%s", jsonStr, funcExtInfo, jsonStr.UTF8String);
    NSDictionary *result22 = nil;
    result22 = @{ @"click_info_report": jsonStr };
    NSLog(@"result22: %@", result22);
    NSString *jsonData11 = [TestViewController jsonStringForNSJsonData:result22 options:0];
    NSLog(@"jsonData11: %@,jsonData11=%s", jsonData11, jsonData11.UTF8String);
    QUINT32 testNum = 2;
    Person *dic = [[NSMutableDictionary alloc] initWithCapacity:10];
    NSMutableDictionary *dic111 = [[NSMutableDictionary alloc] initWithCapacity:10];
    NSMutableArray *testMA = [[NSMutableArray alloc] init];
    Person *Person11 = [[Person alloc]init];
//    [Person11 sayHello11];
//    LibPerson *Person222222 = [[LibPerson alloc]init];
//    [Person222222 watch];
//    [Person222222 eat];
//    [Person222222 watch22];
//    [Person222222 haha];
//    Teststaticlib *staticLib = [[Teststaticlib alloc]init];
//    [Teststaticlib testStatic];
//    [staticLib testshaha];
//    [Person222222 haha];
    [testMA addObject:Person11];
    [testMA addObject:@"ssfdsfdsf"];
    [dic111 setObject:testMA forKey:@"fdsfd"];
    NSMutableArray<Person *> *testMA11 = [dic111 objectForKey:@"fdsfd"];
    NSString *hehe = testMA11[0];
//    hehe.length;
    [dic setValue:nil forKey:@"sdadsd"];
    CGSize testSize = CGSizeMake(0, 0);
    BOOL result11 = CGSizeEqualToSize(CGSizeZero, testSize);
//    [dic setObject:nil forKey:@"sdadsdss"];
//    dic.enName =@"dsdsd";
//    NSLog(@"chengjian_test main hehe %@",[dic enName]);
    if (BigCellType_InterActive == testNum) {
        NSLog(@"chengjian_test main hehe");
    }
    int seq = 10;
    int *p = &seq;
    NSLog(@"main sssss %p,%p", &seq, p);
    *p = 20;
    NSLog(@"main value %d,%p", seq, p);
    Person *person1121 = nil;
    char *aaa = "person1121.name";
    const char *fbkvokeypath = strchr(aaa, '.');
    fbkvokeypath + 1;
//    NSString *test11 = FBKVOKeyPath(person1121.name);
    NSString *test11 = @(({ const char *fbkvokeypath = strchr("person1121.name", '.'); "fbkvokeypath + 1"; }));
    if (!person1121.name) {
        person1121.name = @"sadsadsd";
    }
    Person *person10 = [Person alloc];
//    [person10 setName:@"dddd" ddd:@"dddd"];
    person10.name = @"ddddddddd";
    NSString *testStr11 = @"ddd";
    NSString *testStr111 = testStr11 ? : @"";
    for (int i = 0; i < 10; i++) {
        if (i == 3 || i == 4) {
            continue;
        }
        NSLog(@"test for is %d", i);
    }
    NSString *testStr1 = [NSString stringWithFormat:@"%d", RIJShortVideoRequestStateSuccess];
    NSLog(@"value.add is %@", testStr1);
//    Person* personOne = [[Person alloc]init];
//    NSLog(@"person is %@", personOne);
//    [personOne release];
//    NSLog(@"person is %@", personOne);
    Tmsg value;
    Tmsg *valueP = &value;
    NSLog(@"value.add is %p,%p", &value, valueP);
    valueP = nil;
    NSLog(@"value.add is %p,%p", &value, valueP);
    Tmsg valueP1 = { nil, nil, nil };
    Tmsg *valuePa = &valueP1;
    NSLog(@"value.add111 is %p", valuePa);
    Tmsg valueP2 = { nil, nil, nil };
    Tmsg *valueP2a = &valueP1;
    NSLog(@"value.add111 is %p", valuePa);
    int var = 20;
    int *ip;
    ip = &var;
    int var1 = *ip;
    NSLog(@"ip is %p", ip);
    NSLog(@"ip is %d", *ip);
    NSLog(@"var1 is %d", var1);
    var = 30;
    NSLog(@"ip is %d", *ip);
    NSLog(@"var1 is %d", var1);
    testMonitorGCD();
//    testThreadMethod();
//    testNSThread();
//    testNSGCD();
    BOOL aaaa = 2;
    if (aaaa) {
        NSLog(@"a is YES");
    } else {
        NSLog(@"a is NO");
    }
    if (aaaa == YES) {
        NSLog(@"a == YES");
    } else {
        NSLog(@"a != YES");
    }
    float aaaaa = 1.1f;
    int bbbbb = (int)(aaaaa * 1000);
    NSLog(@"aaaaa: %f", aaaaa);
    NSLog(@"bbbbb: %d", bbbbb);
    BOOL a = TRUE;
    a = true;
    a = YES;
//    NSUInteger startIndex =2;
//    for (NSUInteger index = startIndex - 1; index >= 0; index--) {
//        NSLog(@"oneNodeIndexPath: ");
//    }
    NSString *testStr = nil;
//     NSString *testStr1 = FBKVOKeyPath(RIJShortVideoRequestStateSuccess);
//     NSLog(@"oneNodeIndexPath: %d", testStr.length);
    NSIndexPath *oneNodeIndexPath = [NSIndexPath indexPathWithIndex:6];
    NSLog(@"oneNodeIndexPath: %@", oneNodeIndexPath);
    NSLog(@"currentThread---%@", [NSThread currentThread]);
    // 定义并初始化一个C数组：1个元素
//    NSUInteger indexs[] = { 1 };
//    NSIndexPath *oneNodeIndexPath2 = [NSIndexPath indexPathWithIndexes:indexs length:3];
//    NSLog(@"oneNodeIndexPath: %@", oneNodeIndexPath2);

    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:9];
    NSLog(@"indexPath: %@", indexPath);
    // 定义并初始化一个C数组：2个元素
    NSUInteger indexs2[] = { 1, 2 };
    NSIndexPath *twoNodeIndexPath = [NSIndexPath indexPathWithIndexes:indexs2 length:2];
    NSLog(@"twoNodeIndexPath: %@", twoNodeIndexPath);

    // 定义并初始化一个C数组：3个元素
    NSUInteger indexs3[] = { 1, 2, 3 };
//    NSIndexPath *threeNodeIndexPath = [NSIndexPath indexPathWithIndexes:indexs3 length:3];
//    NSLog(@"threeNodeIndexPath: %@", threeNodeIndexPath);
    // 串行队列的创建方法
    dispatch_queue_t queue = dispatch_queue_create("net.bujige.testQueue", DISPATCH_QUEUE_SERIAL);
//    dispatch_sync(queue, ^{
//        // 追加任务1
//        for (int i = 0; i < 2; ++i) {
//            [NSThread sleepForTimeInterval:1];              // 模拟耗时操作
//            NSLog(@"1---%@",[NSThread currentThread]);      // 打印当前线程
//        }
//    });
//    NSLog(@"111111111111111");
//    dispatch_sync(queue, ^{
//        // 追加任务2
//        for (int i = 0; i < 2; ++i) {
//            [NSThread sleepForTimeInterval:1];              // 模拟耗时操作
//            NSLog(@"2---%@",[NSThread currentThread]);      // 打印当前线程
//        }
//    });
//    NSLog(@"222222222");
//    dispatch_sync(queue, ^{
//        // 追加任务3
//        for (int i = 0; i < 2; ++i) {
//            [NSThread sleepForTimeInterval:1];              // 模拟耗时操作
//            NSLog(@"3---%@",[NSThread currentThread]);      // 打印当前线程
//        }
//    });
    NSLog(@"3333333");
    NSLog(@"syncConcurrent---end");
//    // 并发队列的创建方法
//    dispatch_queue_t queue = dispatch_queue_create("net.bujige.testQueue", DISPATCH_QUEUE_CONCURRENT);
    // 主队列的获取方法
//    dispatch_queue_t queue = dispatch_get_main_queue();
    int (^ helloWorld)(int) = ^(int i) {
        NSLog(@"Hello World!");
        return i;
    };
//    void (^helloWorld)(void);
//    helloWorld=^(void){
//        NSLog(@"Hello World!");
//    };
    helloWorld(10);
    NSArray *arraya = [NSArray arrayWithObjects:@"4", @"1", @"2", @"3", @"5", nil];
    arraya = [arraya sortedArrayUsingComparator:^NSComparisonResult (id obj1, id obj2) {
        int a1 = [obj1 intValue];
        int a2 = [obj2 intValue];
        return a1 >= a2 ? -1 : 1;
    }];
    NSLog(@"%@", arraya);
//    NSLog(@"%@",arraya[100]);
    QUINT64 channelID = 10;
    NSNumber *longlongNumber = [NSNumber numberWithLongLong:channelID];
    NSDictionary *userInfo = @{ @"isRefreshChannel": @(YES), @"channel_id": @(channelID), @"channel_id_qq": @(0), @"type": @"1", @"type": @"1", @"typess": @(AA), @"hello": @(NO) };
    NSInteger count = userInfo.count;
    NSLog(@"userInf count=%d", count);
    bool isAppear = [userInfo objectForKey:@"isRefreshChannel"] == YES;
    NSNumber *boolNum = userInfo[@"isRefreshChannel"];
    BOOL isOn = [boolNum boolValue];
    NSNumber *boolNum1 = userInfo[@"hello"];
    BOOL isOn1 = [boolNum1 boolValue];
    if (userInfo[@"channel_id"]) {
        NSLog(@"dfdsfdsdddfddf");
    }
    if (userInfo[@"channel_idsss"]) {
        NSLog(@"aaaaaaaa");
    }
    if (userInfo[@"channel_id_qq"]) {
        NSLog(@"bbbbbbbb");
    }
    //    NSDictionary *userInfo;
    QUINT64 channelID3 = [userInfo[@"channel_id"] unsignedLongLongValue];
    NSLog(@"userInfo=%@", userInfo[@"channel_id"]);
    int channelID4 = [userInfo[@"type"] intValue];
//    NSLog(@"userInfo=%@",userInfo[@"channel_id"]);
    NSLog(@"userInfsssssssso=%d", channelID4);
    bool add = YES;
    BOOL add11 = YES;
    NSLog(@"YES = %d", add ? YES : NO);
    //    NSDictionary *pop_sheet = [NSJSONSerialization JSONObjectWithData:NULL
    //                                                    options:NSJSONReadingMutableContainers
    //                                                                error:nil];
    SelectorSub *ss = [[SelectorSub alloc]init];
    NSDictionary *dic1 = [NSDictionary dictionaryWithObject:@(channelID) forKey:@"key1"];
    SelectorSub *str111 = [dic1 objectForKey:@"key1"];
    SelectorSub *str1111 = dic1[@"key1"];
    NSNumber *longlongNumber2 = [dic1 objectForKey:@"key1"];
    NSLog(@"%@", longlongNumber2);
    QUINT64 channelID2 = longlongNumber2.longLongValue;
    NSLog(@"%@", dic1[@"key1"]);
    NSDictionary *dic2 = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:ss, @"object2", @"object3", nil] forKeys:[NSArray arrayWithObjects:@"key1", @"key2", @"key3", nil]];
    NSLog(@"dic2 has :%@", dic2);
    ss.methodTest = @selector(parentMethod);
    [ss TestParentMethod];
    ss.methodTest = @selector(SubMethod);
    [ss TestParentMethod];
    //    ss.methodTest = @selector(parentMethod); 这句在运行期时，会寻找到父类中的方法进行调用。
    //
    //    ss.methodTest = @selector(SubMethod);//这句就在运行期时，会先寻找父类，如果父类没有，则寻找子类。
    //
    //
    //
    //    如果这里将ss.methodTest = @selector(test); 其中test即不是ss父类，也不是ss本身，也非SS子类，哪么这个时候在使用
    //
    //    [self performSelector:_methodTest withObject:nil];就会出现地址寻找出错 。

    //    [ss release];
    NSLog(@"main 当前栈信息：%@", [NSThread callStackSymbols]);
    NSLog(@"%s", (char *)(@selector(doSomething)));
    Person *person33 = [Person alloc];
    person33.name = @"1239999";
    NSLog(@"222222 person33=%@,name=%@", person33, person33.name);
//    LibPerson *person11 = [[LibPerson alloc]init];
//    Teststaticlib *lib = [[Teststaticlib alloc]init];
//    [lib testslib:@"ddddddd"];
//    [person11 performSelectorOnMainThread:@selector(eat) withObject:nil waitUntilDone:NO];
//    testFWStatic *fwstatic = [[testFWStatic alloc]init];
//    [fwstatic testFWStaticA];
    Class LSApplicationWorkspace_class = NSClassFromString(@"LSApplicationWorkspace");
    //打印设备中的所有的bundid
    //    NSObject *workspace = [LSApplicationWorkspace_class performSelector:@selector(defaultWorkspace)];
    //    NSArray *arrAPP = [workspace performSelector:@selector(allApplications)];
    //    NSLog(@"arrAPP: %@",arrAPP);
    NSArray *array1 = [NSArray arrayWithObjects:@"0", @"1", @"2", @"3", nil];
    NSLog(@"array1 are :%@", array1);
    NSArray *array2 = [[NSArray alloc] initWithObjects:@"00", @"11", @"22", @"33", nil];
    NSLog(@"array2 are :%@", array2);
    NSString *str = [array1 objectAtIndex:1];
    NSLog(@"%@", str);
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"1", @"2", @"3", nil];
    NSArray *addArray = [NSArray arrayWithObjects:@"4", @"5", @"6", nil];
    [array addObjectsFromArray:addArray];
    NSLog(@"obj1 class is11111 = %@", nil);
    NSLog(@"%@", array);
    id obj1 = [NSMutableArray alloc];
    id obj2 = [[NSMutableArray alloc] init];

    id obj3 = [NSArray alloc];
    id obj4 = [[NSArray alloc] initWithObjects:@"Hello", nil];

    NSLog(@"obj1 class is %@", NSStringFromClass([obj1 class]));
    NSLog(@"obj2 class is %@", NSStringFromClass([obj2 class]));

    NSLog(@"obj3 class is %@", NSStringFromClass([obj3 class]));
    NSLog(@"obj4 class is %@", NSStringFromClass([obj4 class]));

    id obj5 = [MyObject alloc];
    id obj6 = [[MyObject alloc] init];
    //    id obj7 = [[MyObject alloc] init];
    NSLog(@"obj5 class is %@", NSStringFromClass([obj5 class]));
    NSLog(@"obj6 class is %@", NSStringFromClass([obj6 class]));
    //    NSLog(@"obj7 class is %@",NSStringFromClass([obj6 class]));

    NSLog(@"main 1111");
    Person *person = [[Person alloc] init];
//    [person ea];
    NSLog(@"222222 person=%@", person);
    Person *person2 = [Person alloc];
    NSLog(@"222222 person2=%@,name=%@", person2, person2.name);
    [person2 testlib:@"cj" andage:@"88"];
    NSLog(@"person2。1=%p,obj7 class is %@", person2, NSStringFromClass([person2 class]));
    person2 = [person2 init];
    NSLog(@"222222222 person2=%@,name=%@", person2, person2.name);
    //    [person2 testlib:@"cj11" :@"88"];
    NSLog(@"person2。2=%p,obj8 class is %@", person2, NSStringFromClass([person2 class]));
    id person1 = [[NSObject alloc] init];
//    NSLog(@"222222 person1=%@",person1);
    //    id person1=[[Person alloc] init];
    //        [person1 exercis];
    [person exercis];
    [person run];
//    [person exercise:^(NSString *name, int age) {
//        NSLog(@"%@,%d",name,age);
//    }];
//    [person exercise:nil];
//    dispatch_main();
    NSLog(@"ssssssss=%s", (char *)(@selector(doSomething)));
    //调用类别中增加的eat方法
//    [NSThread sleepForTimeInterval:15];
    [person eat];
//    NSArray * array=[NSArray arrayWithObjects:@"4",@"1",@"2",@"3",@"5", nil];
//    array= [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//        int a1=[obj1 intValue];
//        int a2=[obj2 intValue];
//        return a1>=a2?-1:1;
//    }];
//    NSLog(@"%@",array);
//    [TestAdd loadTest];
//     [ViewController loadTest];
     [Person loadTest];
    Person *testSWitchPerson = [[Person alloc]init];
    NSMutableDictionary *dic11 = [NSMutableDictionary dictionaryWithCapacity:2];
    [dic11 setValue:@"dd" forKey:@"dd"];
    testSWitchPerson.copyDic = dic11;
    [testSWitchPerson sayHello];
    test();
//    TestAdd *testAdd = [[TestAdd alloc]init];
//    [testAdd add_sayHello];
//
//    [testSWitchPerson sayHello];
   
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
//        NSLog(@"11111111");
    }
    NSLog(@"chengjian he 222222222");
//    return 1;
}


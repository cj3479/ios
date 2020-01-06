//
//  AppDelegate.h
//  TestBuildSetting
//
//  Created by chengjian on 2019/12/23.
//  Copyright © 2019 tencent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


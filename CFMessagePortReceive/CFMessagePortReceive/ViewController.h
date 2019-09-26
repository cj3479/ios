//
//  ViewController.h
//  CFMessagePortReceive
//
//  Created by chengjian on 2019/9/25.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioSession.h>
#import <AVFoundation/AVAudioPlayer.h>
@interface ViewController : UIViewController<NSMachPortDelegate>
@property (nonatomic, strong) AVAudioPlayer *myBackMusic;

@end


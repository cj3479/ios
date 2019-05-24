//
//  ViewController.h
//  TestApp1
//
//  Created by chengjian on 2019/5/23.
//  Copyright © 2019年 chengjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"
@interface ViewController : UIViewController<SampleProtocolDelegate>
{
    IBOutlet UILabel *label;
}


@end


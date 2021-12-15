//
//  TestTableViewCell.m
//  TestBase
//
//  Created by chengjian on 2020/4/15.
//  Copyright © 2020 chengjian. All rights reserved.
//

#import "TestTableViewCell.h"

@implementation TestTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
         if (self) {
         }
         return self;
}

- (void)prepareForReuse{
    NSLog(@"chengjian_test getview prepareForReuse this=%@",self);
}
@end

//
//  RIJAdIEHanderFactory.m
//  QQMainProject
//
//  Created by chengjian on 2019/8/8.
//  Copyright © 2019 tencent. All rights reserved.
//

#import "RIJIEAdUIHandlerFactory.h"
@implementation RIJIEAdUIHandlerFactory
+(RIJIEAdBaseUIHandler *) getRIJIEAdBaseUIHandler;
{
    RIJIEAdBaseUIHandler *uihandler;
    uihandler = [[RIJIEAdAlphaUIHandler alloc] init];
    return uihandler;
    //    if(adinfo.bigCellType == 2 && (adinfo.animatedType == 2 || _adcardModel.AdInfo.animatedType == 3) && [_adcardModel.AdInfo.animatedUrl isKindOfClass: [NSString class]] && _adcardModel.AdInfo.animatedUrl.length){
    //        [_topImgView setImageWithURL:_adcardModel.AdInfo.animatedUrl placeholderImage:[UIImage imageWithColor:[UIColor colorFromHexString:@"#00000000"]]];
    //        _topImgView.alpha = 0;
    //        [self addSubview: _topImgView];
    //    }else{
    //        [_topImgView removeFromSuperview];
    //    }
//    return nil;
}
@end

@implementation RIJIEAdBaseUIHandler
@end

@implementation RIJIEAdAlphaUIHandler
- (void)initUI
{
//    if(self.adinfo && self.adView)
//    {
//        if([self.adinfo.animatedUrl isKindOfClass: [NSString class]] && self.adinfo.animatedUrl.length){
//            [self.adView.topImgView setImageWithURL:self.adinfo.animatedUrl placeholderImage:[UIImage imageWithColor:[UIColor colorFromHexString:@"#00000000"]]];
//            self.adView.topImgView.alpha = 0;
//            [self.adView addSubview: self.adView.topImgView];
//        }
//    }
}
@end
//@implementation RIJIEAdScaleUIHandler
//- (void)initUI
//{
////    if(self.adinfo && self.adView)
////    {
////        if([self.adinfo.animatedUrl isKindOfClass: [NSString class]] && self.adinfo.animatedUrl.length){
////            [self.adView.topImgView setImageWithURL:self.adinfo.animatedUrl placeholderImage:[UIImage imageWithColor:[UIColor colorFromHexString:@"#00000000"]]];
////            //            self.adView.topImgView.frame = self.bounds;
////            [self.adView addSubview: self.adView.topImgView];
////        }
////    }
//}
//@end
@implementation RIJIEAdHorizontalMoveUIHandler
- (void)initUI
{
//    if(self.adinfo && self.adView)
//    {
//        if([self.adinfo.animatedUrl isKindOfClass: [NSString class]] && self.adinfo.animatedUrl.length){
//            [self.adView.topImgView setImageWithURL:self.adinfo.animatedUrl placeholderImage:[UIImage imageWithColor:[UIColor colorFromHexString:@"#00000000"]]];
//            self.adView.topImgView.alpha = 0;
//            [self.adView addSubview: self.adView.topImgView];
//        }
//    }
}
@end

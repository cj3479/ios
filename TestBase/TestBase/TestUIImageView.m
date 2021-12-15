//
//  TestUIImageView.m
//  TestBase
//
//  Created by chengjian on 2019/12/5.
//  Copyright © 2019 chengjian. All rights reserved.
//

#import "TestUIImageView.h"

@implementation TestUIImageView
//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
////    [super hitTest:<#point#> withEvent:<#event#>];
//    return self;
//}
// 这是2个方法的理解：1.drawLayer是一个图层的代理方法。每个UIView都由自己的基层CaLayer，它会自动调用这个drawlayer方法将其事先设置好的各种属性绘制在这个基本的图层上面2.如果复写这个方法，一定要调用［super drawLayer:layer inContext:ctx］，否则就没意义了。3.这个方法里面会自动调用drawRect方法，这就是方便开发者，在基本图层的基础上再次自定义。（这就是为什么结果会先输出drawRect）4.破解这限制很简单：将这个代理里面做一个逻辑判断（没尝试过），再有就是写一个代理类嘛.(尼玛，千万别尝试第一种，刚直接重启了)
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    [super drawLayer:layer inContext:ctx];
    NSLog(@"chengjian TestUIImageView drawLayer layer=%@ layer.backgroundColor=%@", layer, layer.backgroundColor);
}

- (void)drawRect:(CGRect)rect {
    NSLog(@"chengjian TestUIImageView drawRect rect.width=%f", rect.size.width);
}

- (void)layerWillDraw:(CALayer *)layer {
    [super layerWillDraw:layer];
    NSLog(@"chengjian layerWillDraw drawLayer layer=%@", layer);
}

@end

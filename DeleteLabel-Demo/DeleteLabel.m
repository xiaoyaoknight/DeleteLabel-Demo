//
//  DeleteLabel.m
//  test
//
//  Created by 王泽龙 on 2019/7/25.
//  Copyright © 2019 王泽龙. All rights reserved.
//

#import "DeleteLabel.h"

@implementation DeleteLabel

- (void)drawRect:(CGRect)rect {
    
    // 调用super的drawRect:方法,会按照父类绘制label的文字
    [super drawRect:rect];
    // 取文字的颜色作为删除线的颜色
    [self.textColor set];
    CGFloat w = rect.size.width;
    CGFloat h = rect.size.height;
    // 绘制(0.35是label的中间位置,可以自己调整)
    UIRectFill(CGRectMake(12, h * 0.35, w - 24, 1));
}
@end

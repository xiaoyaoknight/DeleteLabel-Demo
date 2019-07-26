//
//  ViewController.m
//  DeleteLabel-Demo
//
//  Created by 王泽龙 on 2019/7/26.
//  Copyright © 2019 王泽龙. All rights reserved.
//

#import "ViewController.h"
#import "DeleteLabel.h"

@interface ViewController ()

@property (nonatomic, strong) DeleteLabel *originPriceLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    DeleteLabel *originPriceLabel = [[DeleteLabel alloc] initWithFrame:CGRectMake(100, 200, 300, 50)];
    originPriceLabel.textColor = [UIColor redColor];
    originPriceLabel.font = [UIFont systemFontOfSize:20];
    originPriceLabel.textAlignment = NSTextAlignmentLeft;
    self.originPriceLabel = originPriceLabel;
    [self.view addSubview:originPriceLabel];
    
    NSString *oldPrice = [NSString stringWithFormat:@"￥%@", @"123948.00"];
    //    NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:oldPrice];
    //    // iOS10.3之后要在原有的属性字典里添加NSBaselineOffsetAttributeName键。否则划线无效
    //    [attri addAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:26], NSStrikethroughStyleAttributeName:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle), NSBaselineOffsetAttributeName:@(0)} range:NSMakeRange(0, attri.length)];
    //    originPriceLabel.attributedText = attri;
    self.originPriceLabel.text = oldPrice;
    [self.originPriceLabel sizeToFit];
    
}



@end


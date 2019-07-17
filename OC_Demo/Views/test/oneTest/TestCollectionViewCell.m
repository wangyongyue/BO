//
//  TestCollectionViewCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "TestCollectionViewCell.h"
#import "OneCellModel.h"

@implementation TestCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel *label =  [[UILabel alloc]init];
        [self.contentView addSubview:label];
        label.text = @"style1";
        label.textColor = UIColor.redColor;
        label.frame = CGRectMake(0, 0, 100, 50);
    }
    return self;
}
- (void)setModel:(id<CellModelProtocol>)model{
    
}
@end

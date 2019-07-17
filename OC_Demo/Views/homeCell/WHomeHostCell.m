//
//  WHomeHostCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WHomeHostCell.h"

@interface WHomeHostCell ()
@property(nonatomic,strong)UILabel *label;

@end
@implementation WHomeHostCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.label =  [[UILabel alloc]init];
        [self.contentView addSubview:self.label];
        self.label.textColor = UIColor.redColor;
        self.label.textAlignment = NSTextAlignmentCenter;
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.bottom.offset(0);
            make.left.offset(0);
            make.right.offset(0);
            
        }];
        
    }
    return self;
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WHomeHostCellModel class]]){
        
        WHomeHostCellModel *m = (WHomeHostCellModel *)model;
        self.label.text = m.title;
        
    }
    
}
@end

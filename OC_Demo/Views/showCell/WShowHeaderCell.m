//
//  WShowHeaderCell.m
//  OC_Demo
//
//  Created by apple on 2019/7/19.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WShowHeaderCell.h"

@interface WShowHeaderCell ()
@property(nonatomic,strong)UILabel *label;

@end
@implementation WShowHeaderCell
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
    if ([model isKindOfClass:[WShowHeaderCellModel class]]){
        
        WShowHeaderCellModel *m = (WShowHeaderCellModel *)model;
        
        self.label.text = m.title;
        
    }
    
}
@end

@implementation WShowHeaderCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WShowHeaderCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}



@end

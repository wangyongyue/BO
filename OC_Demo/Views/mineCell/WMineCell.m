//
//  WMineCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WMineCell.h"

@interface WMineCell ()
@property(nonatomic,strong)UILabel *label;
@end
@implementation WMineCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
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
    if ([model isKindOfClass:[WMineCellModel class]]){
        WMineCellModel *m = (WMineCellModel *)model;
        self.label.text = m.title;
        
    }
}
@end

@implementation WMineCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WMineCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

//
//  WEndNumberCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/20.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WEndNumberCell.h"

@interface WEndNumberCell ()
@property(nonatomic,strong)UILabel *label;


@end
@implementation WEndNumberCell
- (UILabel *)label{
    if (_label == nil){
        _label =  [[UILabel alloc]init];
        _label.textColor = UIColor.whiteColor;
        _label.textColor = UIColor.redColor;
        _label.textAlignment = NSTextAlignmentCenter;
    }
    return _label;
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        [self.contentView addSubview:self.label];
        
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.right.offset(0);
            make.left.offset(0);
            make.bottom.offset(0);
            
            
        }];
        
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WEndNumberCellModel class]]){
        WEndNumberCellModel *m = (WEndNumberCellModel *)model;
        self.label.text = m.title;
        
    }
}
@end

@implementation WEndNumberCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WEndNumberCell class]);
}
- (CGFloat)getCellHeight{
    
    return 150;
}
@end

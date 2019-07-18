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
@property(nonatomic,strong)UIImageView *leftImg;
@property(nonatomic,strong)UIImageView *rightImg;

@end
@implementation WMineCell
- (UILabel *)label{
    if (_label == nil){
        _label =  [[UILabel alloc]init];
        _label.textColor = UIColor.redColor;
        _label.textAlignment = NSTextAlignmentLeft;
    }
    return _label;
}
- (UIImageView *)leftImg{
    if (_leftImg){
        _leftImg = [[UIImageView alloc]init];
    }
    return _leftImg;
}
- (UIImageView *)rightImg{
    if (_rightImg){
        _rightImg = [[UIImageView alloc]init];
        _rightImg.image = [UIImage imageNamed:@"ca_right"];
    }
    return _rightImg;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        [self.contentView addSubview:self.label];
        [self.contentView addSubview:self.leftImg];
        [self.contentView addSubview:self.rightImg];

        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.bottom.offset(0);
            make.left.offset(50);
            
        }];
        [self.leftImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.offset(25);
            make.left.offset(12);
            
        }];
        [self.rightImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.offset(25);
            make.right.offset(-12);
            
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

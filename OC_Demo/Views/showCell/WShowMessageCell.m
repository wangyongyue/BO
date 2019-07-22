//
//  WShowMessageCell.m
//  OC_Demo
//
//  Created by apple on 2019/7/19.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WShowMessageCell.h"

@interface WShowMessageCell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *subLabel;
@property(nonatomic,strong)UIImageView *rightImg;
@end
@implementation WShowMessageCell
- (UILabel *)label{
    if (_label == nil){
        _label =  [[UILabel alloc]init];
        _label.textColor = UIColor.redColor;
        _label.textAlignment = NSTextAlignmentLeft;
    }
    return _label;
}
- (UILabel *)subLabel{
    if (_subLabel == nil){
        _subLabel =  [[UILabel alloc]init];
        _subLabel.textColor = UIColor.redColor;
        _subLabel.textAlignment = NSTextAlignmentRight;
    }
    return _subLabel;
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
        [self.contentView addSubview:self.rightImg];
        [self.contentView addSubview:self.subLabel];
        
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.bottom.offset(0);
            make.left.offset(10);
            
        }];
        
        [self.rightImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.bottom.offset(0);
            make.right.offset(-10);
            
        }];
        
        [self.subLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.bottom.offset(0);
            make.right.offset(-40);
            
        }];
        
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WShowMessageCellModel class]]){
        WShowMessageCellModel *m = (WShowMessageCellModel *)model;
        self.label.text = m.title;
        self.subLabel.text = m.title;
        
    }
}
@end
@implementation WShowMessageCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WShowMessageCell class]);
}
- (CGFloat)getCellHeight{
    
    return 30;
}
@end

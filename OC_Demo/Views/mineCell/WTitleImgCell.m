//
//  WTitleImgCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WTitleImgCell.h"

@interface WTitleImgCell ()
@property(nonatomic,strong)UILabel *label;

@property(nonatomic,strong)UIImageView *rightImg;
@end
@implementation WTitleImgCell
- (UILabel *)label{
    if (_label == nil){
        _label =  [[UILabel alloc]init];
        _label.textColor = UIColor.redColor;
        _label.textAlignment = NSTextAlignmentLeft;
    }
    return _label;
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
       
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WTitleImgCellModel class]]){
        WTitleImgCellModel *m = (WTitleImgCellModel *)model;
        self.label.text = m.title;
        
    }
}
@end

@implementation WTitleImgCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WTitleImgCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

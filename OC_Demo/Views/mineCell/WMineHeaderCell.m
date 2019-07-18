//
//  WMineHeaderCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WMineHeaderCell.h"

@interface WMineHeaderCell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UILabel *followLabel;
@property(nonatomic,strong)UILabel *fansLabel;
@property(nonatomic,strong)UIButton *follow;
@property(nonatomic,strong)UIButton *fans;

@end
@implementation WMineHeaderCell

- (UIButton *)follow{
    if (_follow == nil){
        _follow = [UIButton buttonWithType:UIButtonTypeCustom];
        [_follow setTitle:@"关注" forState:UIControlStateNormal];
        [_follow setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_follow addTarget:self action:@selector(clickFollow) forControlEvents:UIControlEventTouchUpInside];
    }
    return _follow;
}
- (UIButton *)fans{
    if (_fans == nil){
        _fans = [UIButton buttonWithType:UIButtonTypeCustom];
        [_fans setTitle:@"粉丝" forState:UIControlStateNormal];
        [_fans setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_fans addTarget:self action:@selector(clickFans) forControlEvents:UIControlEventTouchUpInside];
    }
    return _fans;
}
- (UILabel *)followLabel{
    if (_followLabel == nil){
        _followLabel =  [[UILabel alloc]init];
        _followLabel.textColor = UIColor.redColor;
        _followLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _followLabel;
}
- (UILabel *)fansLabel{
    if (_fansLabel == nil){
        _fansLabel =  [[UILabel alloc]init];
        _fansLabel.textColor = UIColor.redColor;
        _fansLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _fansLabel;
}

- (UILabel *)label{
    if (_label == nil){
        _label =  [[UILabel alloc]init];
        _label.textColor = UIColor.redColor;
        _label.textAlignment = NSTextAlignmentCenter;
    }
    return _label;
}




- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        [self.contentView addSubview:self.label];
        [self.contentView addSubview:self.followLabel];
        [self.contentView addSubview:self.fansLabel];
        [self.contentView addSubview:self.follow];
        [self.contentView addSubview:self.fans];

        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(30);
            make.left.offset(0);
            make.right.offset(0);
            
        }];
        
        [self.follow mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.offset(-10);
            make.left.offset(WWIDTH/4 - 20);
            
        }];
        [self.followLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.offset(-13);
            make.left.equalTo(self.follow.mas_right).offset(12);
            
        }];
        
        [self.fans mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.offset(-10);
            make.left.offset(WWIDTH/4*3 - 20);
            
        }];
        [self.fansLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.offset(-13);
            make.left.equalTo(self.fans.mas_right).offset(12);

            
        }];
        
        
    }
    
    return self;
    
}
- (void)clickFollow{
    
    WConcern *m = [[WConcern alloc]init];
    [Router push:m];
    
    
}
- (void)clickFans{
    
    WFans *m = [[WFans alloc]init];
    [Router push:m];
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WMineHeaderCellModel class]]){
        WMineHeaderCellModel *m = (WMineHeaderCellModel *)model;
        self.label.text = m.title;
        self.followLabel.text = @"10";
        self.fansLabel.text = @"10";

    }
}
@end

@implementation WMineHeaderCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WMineHeaderCell class]);
}
- (CGFloat)getCellHeight{
    
    return 150;
}
@end

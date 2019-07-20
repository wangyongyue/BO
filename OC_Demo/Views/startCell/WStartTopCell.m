//
//  WStartTopCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/20.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WStartTopCell.h"

@interface WStartTopCell ()
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIButton *beauty;
@property(nonatomic,strong)UIButton *camera;
@property(nonatomic,strong)UIButton *close;

@end
@implementation WStartTopCell
- (UILabel *)label{
    if (_label == nil){
        _label =  [[UILabel alloc]init];
        _label.textColor = UIColor.redColor;
        _label.textAlignment = NSTextAlignmentLeft;
    }
    return _label;
}
- (UIButton *)beauty{
    if (_beauty == nil){
        _beauty = [UIButton buttonWithType:UIButtonTypeCustom];
        [_beauty setTitle:@"美颜" forState:UIControlStateNormal];
        [_beauty setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_beauty addTarget:self action:@selector(clickBeauty) forControlEvents:UIControlEventTouchUpInside];
    }
    return _beauty;
}

- (UIButton *)camera{
    if (_camera == nil){
        _camera = [UIButton buttonWithType:UIButtonTypeCustom];
        [_camera setTitle:@"相机" forState:UIControlStateNormal];
        [_camera setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_camera addTarget:self action:@selector(clickCamera) forControlEvents:UIControlEventTouchUpInside];
    }
    return _camera;
}
- (UIButton *)close{
    if (_close == nil){
        _close = [UIButton buttonWithType:UIButtonTypeCustom];
        [_close setTitle:@"关闭" forState:UIControlStateNormal];
        [_close setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_close addTarget:self action:@selector(clickClose) forControlEvents:UIControlEventTouchUpInside];
    }
    return _close;
}
- (void)clickBeauty{
    
}
- (void)clickCamera{
    
}
- (void)clickClose{
    
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        [self.contentView addSubview:self.label];
        [self.contentView addSubview:self.beauty];
        [self.contentView addSubview:self.camera];
        [self.contentView addSubview:self.close];

        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.left.offset(10);
            
        }];
        
        [self.beauty mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.right.offset(-100);
            
        }];
        
        
        [self.camera mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.right.offset(-60);

        }];
        
        
        [self.close mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.right.offset(-10);
            
        }];
        
        
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WStartTopCellModel class]]){
        WStartTopCellModel *m = (WStartTopCellModel *)model;
        self.label.text = m.title;
        
    }
}
@end

@implementation WStartTopCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WStartTopCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end


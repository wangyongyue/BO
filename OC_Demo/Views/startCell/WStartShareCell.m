//
//  WStartShareCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/20.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WStartShareCell.h"

@interface WStartShareCell ()
@property(nonatomic,strong)UIButton *beauty;
@property(nonatomic,strong)UIButton *camera;
@property(nonatomic,strong)UIButton *close;

@end
@implementation WStartShareCell
- (UIButton *)beauty{
    if (_beauty == nil){
        _beauty = [UIButton buttonWithType:UIButtonTypeCustom];
        [_beauty setTitle:@"微博" forState:UIControlStateNormal];
        [_beauty setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_beauty addTarget:self action:@selector(clickBeauty) forControlEvents:UIControlEventTouchUpInside];
    }
    return _beauty;
}

- (UIButton *)camera{
    if (_camera == nil){
        _camera = [UIButton buttonWithType:UIButtonTypeCustom];
        [_camera setTitle:@"微信" forState:UIControlStateNormal];
        [_camera setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_camera addTarget:self action:@selector(clickCamera) forControlEvents:UIControlEventTouchUpInside];
    }
    return _camera;
}
- (UIButton *)close{
    if (_close == nil){
        _close = [UIButton buttonWithType:UIButtonTypeCustom];
        [_close setTitle:@"QQ" forState:UIControlStateNormal];
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
        
        [self.contentView addSubview:self.beauty];
        [self.contentView addSubview:self.camera];
        [self.contentView addSubview:self.close];

        [self.beauty mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.left.offset(WWIDTH/3);
            make.bottom.offset(0);

        }];
        [self.camera mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.left.offset(WWIDTH/2);
            make.bottom.offset(0);

            
        }];
        [self.close mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.left.offset(WWIDTH/3*2);
            make.bottom.offset(0);

            
        }];
        
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WStartShareCellModel class]]){
        WStartShareCellModel *m = (WStartShareCellModel *)model;
        
    }
}
@end

@implementation WStartShareCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WStartShareCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

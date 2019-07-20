//
//  WEndFocusCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/20.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WEndFocusCell.h"

@interface WEndFocusCell ()
@property(nonatomic,strong)UILabel *label;


@end
@implementation WEndFocusCell
- (UILabel *)label{
    if (_label == nil){
        _label =  [[UILabel alloc]init];
        _label.textColor = UIColor.whiteColor;
        _label.backgroundColor = UIColor.redColor;
        _label.textAlignment = NSTextAlignmentCenter;
        _label.layer.cornerRadius = 20;
        _label.layer.masksToBounds = YES;
    }
    return _label;
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        [self.contentView addSubview:self.label];
        
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.right.offset(-20);
            make.left.offset(20);
            make.height.offset(40);
            
        }];
        
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WEndFocusCellModel class]]){
        WEndFocusCellModel *m = (WEndFocusCellModel *)model;
        self.label.text = m.title;
        
    }
}
@end

@implementation WEndFocusCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WEndFocusCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

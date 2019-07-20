//
//  WEndHeaderCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/20.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WEndHeaderCell.h"

@interface WEndHeaderCell ()
@property(nonatomic,strong)UILabel *label;


@end
@implementation WEndHeaderCell
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
    if ([model isKindOfClass:[WEndHeaderCellModel class]]){
        WEndHeaderCellModel *m = (WEndHeaderCellModel *)model;
        self.label.text = m.title;
        
    }
}
@end

@implementation WEndHeaderCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WEndHeaderCell class]);
}
- (CGFloat)getCellHeight{
    
    return 100;
}
@end

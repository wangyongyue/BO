//
//  WForgetCell.m
//  OC_Demo
//
//  Created by apple on 2019/7/18.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WForgetCell.h"

@interface WForgetCell ()
@property(nonatomic,strong)UILabel *label;
@end
@implementation WForgetCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        self.label =  [[UILabel alloc]init];
        [self.contentView addSubview:self.label];
        self.label.textColor = UIColor.redColor;
        self.label.textAlignment = NSTextAlignmentRight;
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(5);
            make.right.offset(-10);
            
        }];
       
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WForgetCellModel class]]){
        WForgetCellModel *m = (WForgetCellModel *)model;
        self.label.text = m.title;
        
    }
}
@end
@implementation WForgetCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WForgetCell class]);
}
- (CGFloat)getCellHeight{
    
    return 30;
}
@end

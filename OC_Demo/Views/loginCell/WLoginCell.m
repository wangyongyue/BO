//
//  WLoginCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WLoginCell.h"

@interface WLoginCell ()
@property(nonatomic,strong)UILabel *label;
@end
@implementation WLoginCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        self.label =  [[UILabel alloc]init];
        [self.contentView addSubview:self.label];
        self.label.textColor = UIColor.redColor;
        self.label.textAlignment = NSTextAlignmentCenter;
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(5);
            make.bottom.offset(-5);
            make.left.offset(30);
            make.right.offset(-30);

        }];
        self.label.layer.borderColor = UIColor.redColor.CGColor;
        self.label.layer.borderWidth = 1.0;
        self.label.layer.cornerRadius = 20;
        self.label.layer.masksToBounds = YES;
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WLoginCellModel class]]){
        WLoginCellModel *m = (WLoginCellModel *)model;
        self.label.text = m.title;
        
    }
}
@end

@implementation WLoginCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WLoginCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

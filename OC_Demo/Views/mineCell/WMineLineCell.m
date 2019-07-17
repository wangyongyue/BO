//
//  WMineLineCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WMineLineCell.h"

@interface WMineLineCell ()
@end

@implementation WMineLineCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        self.contentView.backgroundColor = UIColor.lightGrayColor;
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WMineLineCellModel class]]){
        WMineLineCellModel *m = (WMineLineCellModel *)model;
        
    }
}
@end

@implementation WMineLineCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WMineLineCell class]);
}
- (CGFloat)getCellHeight{
    
    return 10;
}
@end

//
//  WHomeBottomCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WHomeBottomCell.h"

@interface WHomeBottomCell ()

@end
@implementation WHomeBottomCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
       
        
    }
    return self;
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WHomeBottomCellModel class]]){
        
        WHomeBottomCellModel *m = (WHomeBottomCellModel *)model;
        [self.contentView addSubview:m.subView];
        [m.subView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.bottom.offset(0);
            make.left.offset(0);
            make.right.offset(0);

        }];
       
       

    }
    
}
@end

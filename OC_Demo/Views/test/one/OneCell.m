//
//  OneCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "OneCell.h"
#import "UITableViewCell+CellFunc.h"
#import "UITableViewCell+CellFunc.h"

@implementation OneCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        UILabel *label =  [[UILabel alloc]init];
        [self.contentView addSubview:label];
        label.text = @"style1";
        label.textColor = UIColor.redColor;
        label.frame = CGRectMake(0, 0, 100, 50);
        
    }
   
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[OneCellModel class]]){
        OneCellModel *m = (OneCellModel *)model;
        

    }
}

@end


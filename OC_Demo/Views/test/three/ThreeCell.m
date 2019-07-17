//
//  ThreeCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "ThreeCell.h"

@implementation ThreeCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        UILabel *label =  [[UILabel alloc]init];
        [self.contentView addSubview:label];
        label.text = @"style3";
        label.textColor = UIColor.redColor;
        label.frame = CGRectMake(100, 0, 100, 50);
        
    }
    
    return self;
    
}
@end

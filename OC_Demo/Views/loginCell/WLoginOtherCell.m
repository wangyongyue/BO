//
//  WLoginOtherCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WLoginOtherCell.h"

@interface WLoginOtherCell ()
@end
@implementation WLoginOtherCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        UIButton *weixin = [UIButton buttonWithType:UIButtonTypeCustom];
        [weixin setTitle:@"微信" forState:UIControlStateNormal];
        [weixin setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [self.contentView addSubview:weixin];
        
        UIButton *QQ = [UIButton buttonWithType:UIButtonTypeCustom];
        [QQ setTitle:@"QQ" forState:UIControlStateNormal];
        [QQ setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [self.contentView addSubview:QQ];
        
        
        UIButton *weibo = [UIButton buttonWithType:UIButtonTypeCustom];
        [weibo setTitle:@"微博" forState:UIControlStateNormal];
        [weibo setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [self.contentView addSubview:weibo];
        
        [weixin mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(80);
            make.left.offset(WWIDTH/3);
           
        }];
        
        [QQ mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(80);
            make.left.offset(WWIDTH/2);
            
        }];
        
        [weibo mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(80);
            make.left.offset(WWIDTH/3*2);
            
        }];
        
        
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WLoginOtherModel class]]){
        WLoginOtherModel *m = (WLoginOtherModel *)model;
        
    }
}
@end


@implementation WLoginOtherModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WLoginOtherCell class]);
}
- (CGFloat)getCellHeight{
    
    return 100;
}
@end

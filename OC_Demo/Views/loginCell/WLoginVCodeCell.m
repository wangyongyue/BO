//
//  WLoginVCodeCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WLoginVCodeCell.h"

@interface WLoginVCodeCell ()<UITextFieldDelegate>
@property(nonatomic,strong)UITextField *field;
@property(nonatomic,strong)WLoginVCodeCellModel *inputModel;
@property(nonatomic,strong)UIButton *vcode;


@end
@implementation WLoginVCodeCell

- (UITextField *)field{
    if (_field == nil){
        
        _field = [[UITextField alloc]init];
        _field.borderStyle = UITextBorderStyleRoundedRect;
        _field.textColor = UIColor.blackColor;
    }
    return _field;
}
- (UIButton *)vcode{
    if (_vcode == nil){
        _vcode = [UIButton buttonWithType:UIButtonTypeCustom];
        [_vcode setTitle:@"获取验证码" forState:UIControlStateNormal];
        [_vcode setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_vcode addTarget:self action:@selector(clickVCode) forControlEvents:UIControlEventTouchUpInside];
    }
    return _vcode;
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        [self.contentView addSubview:self.vcode];
        [self.contentView addSubview:self.field];
        self.field.delegate = self;
        [self.field mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(5);
            make.bottom.offset(-5);
            make.left.offset(10);
            make.right.offset(-10 - 90);
            
        }];
        
        [self.vcode mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(5);
            make.bottom.offset(-5);
            make.width.offset(80);
            make.right.offset(-10);
            
        }];
        
        
    }
    
    return self;
    
}
- (void)clickVCode{
    
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    self.inputModel.input = textField.text;
    
    return YES;
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WLoginVCodeCellModel class]]){
        WLoginVCodeCellModel *m = (WLoginVCodeCellModel *)model;
        
        self.field.placeholder = m.title;
        
        self.inputModel = m;
    }
}
@end

@implementation WLoginVCodeCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WLoginVCodeCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

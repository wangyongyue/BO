//
//  WStartInputCell.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/20.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WStartInputCell.h"

@interface WStartInputCell ()<UITextFieldDelegate>
@property(nonatomic,strong)UITextField *field;
@property(nonatomic,strong)UIView *line;
@property(nonatomic,strong)WStartInputCellModel *wModel;



@end
@implementation WStartInputCell
- (UITextField *)field{
    if (_field == nil){
        _field =  [[UITextField alloc]init];
        _field.textColor = UIColor.redColor;
        _field.textAlignment = NSTextAlignmentCenter;
        _field.borderStyle = UITextBorderStyleNone;
        _field.delegate = self;
        
    }
    return _field;
}
- (UIView *)line{
    if (_line == nil){
        _line = [[UIView alloc]init];
        _line.backgroundColor = UIColor.blueColor;
        
    }
    return _line;
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    self.wModel.input = textField.text;
    return YES;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        [self.contentView addSubview:self.field];
        [self.contentView addSubview:self.line];
        [self.field mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.left.offset(20);
            make.right.offset(-20);
            make.height.offset(30);

        }];
        [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(30);
            make.left.offset(20);
            make.right.offset(-20);
            make.height.offset(5);
            
        }];
        
    }
    
    return self;
    
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WStartInputCellModel class]]){
        WStartInputCellModel *m = (WStartInputCellModel *)model;
        self.field.placeholder = m.title;
        
        self.wModel = m;
    }
}
@end

@implementation WStartInputCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WStartInputCell class]);
}
- (CGFloat)getCellHeight{
    
    return 100;
}
@end

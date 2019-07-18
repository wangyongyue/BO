//
//  WPasswordCell.m
//  OC_Demo
//
//  Created by apple on 2019/7/18.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WPasswordCell.h"

@interface WPasswordCell () <UITextFieldDelegate>
@property(nonatomic,strong)UITextField *field;
@property(nonatomic,strong)WPasswordCellModel *inputModel;


@end
@implementation WPasswordCell

- (UITextField *)field{
    if (_field == nil){
        
        _field = [[UITextField alloc]init];
        _field.borderStyle = UITextBorderStyleRoundedRect;
        _field.textColor = UIColor.blackColor;
    }
    return _field;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        [self.contentView addSubview:self.field];
        self.field.delegate = self;
        [self.field mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(5);
            make.bottom.offset(-5);
            make.left.offset(10);
            make.right.offset(-10);
            
        }];
        
        
    }
    
    return self;
    
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    self.inputModel.input = textField.text;
    
    return YES;
}
- (void)setModel:(id<CellModelProtocol>)model{
    if ([model isKindOfClass:[WPasswordCellModel class]]){
        WPasswordCellModel *m = (WPasswordCellModel *)model;
        self.field.placeholder = m.title;
        
        self.inputModel = m;
    }
}
@end
@implementation WPasswordCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WPasswordCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

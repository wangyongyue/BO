//
//  WEditorView.m
//  OC_Demo
//
//  Created by apple on 2019/7/18.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WEditorView.h"
@interface WEditorView ()
@property(nonatomic,strong)UITextField *field;
@property(nonatomic,strong)UIButton *cancle;
@property(nonatomic,strong)UIButton *confirm;
@property(nonatomic,strong)UIView *back;
@property(nonatomic,copy)ClickBlock cBLock;

@end

@implementation WEditorView
- (UITextField *)field{
    if (_field == nil){
        
        _field = [[UITextField alloc]init];
        _field.borderStyle = UITextBorderStyleRoundedRect;
        _field.textColor = UIColor.blackColor;
    }
    return _field;
}
- (UIButton *)cancle{
    if (_cancle == nil){
        _cancle = [UIButton buttonWithType:UIButtonTypeCustom];
        [_cancle setTitle:@"取消" forState:UIControlStateNormal];
        [_cancle setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_cancle addTarget:self action:@selector(clickCancle) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cancle;
}

- (UIButton *)confirm{
    if (_confirm == nil){
        _confirm = [UIButton buttonWithType:UIButtonTypeCustom];
        [_confirm setTitle:@"确定" forState:UIControlStateNormal];
        [_confirm setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_confirm addTarget:self action:@selector(clickConfirm) forControlEvents:UIControlEventTouchUpInside];
    }
    return _confirm;
}
- (UIView *)back{
    if (_back == 0){
        _back = [[UIView alloc]init];
        _back.backgroundColor = UIColor.lightGrayColor;
    }
    return _back;
}

- (void)clickCancle{
    
    [self removeFromSuperview];
    
}
- (void)clickConfirm{
    
    self.cBLock(self.field.text);
    [self removeFromSuperview];

}

- (void)show:(NSString *)string block:(ClickBlock)block{
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:self];
    self.frame = window.bounds;
    self.backgroundColor = UIColor.lightTextColor;
    
    self.field.text = string;
    self.cBLock = block;
    
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        
        [self addSubview:self.back];
        [self.back addSubview:self.field];
        [self.back addSubview:self.cancle];
        [self.back addSubview:self.confirm];

        self.back.layer.cornerRadius = 5;
        self.back.layer.masksToBounds = YES;
        [self.back mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(180);
            make.height.offset(100);
            make.left.offset(80);
            make.right.offset(-80);

        }];
        
        [self.field mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(10);
            make.height.offset(30);
            make.left.offset(20);
            make.right.offset(-20);

        }];
        
        [self.cancle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.offset(0);
            make.height.offset(50);
            make.width.offset(100);
            make.left.offset(0);
            
        }];
        
        [self.confirm mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.offset(0);
            make.height.offset(50);
            make.width.offset(100);
            make.right.offset(0);
            
        }];
        
        
    }
    return self;
}

@end

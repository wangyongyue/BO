//
//  WPhoneLogin.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WPhoneLogin.h"

@interface WPhoneLogin ()
@property(nonatomic,strong)NSMutableArray *array;

@end
@implementation WPhoneLogin

- (NSMutableArray *)array{
    if (_array == nil){
        
        _array = [[NSMutableArray alloc]init];
    }
    return  _array;
}

- (UIViewController *)getVC{
    WTableListVC *vc = [[WTableListVC alloc]init];
    vc.navigationItem.title = @"手机登录";
    vc.m = self;
    vc.rightM = self;
    return vc;
}
- (void)navigationItems{
    
    NSMutableArray *items = [[NSMutableArray alloc]init];
 
    UIButton *search = [UIButton buttonWithType:UIButtonTypeCustom];
    [search setTitle:@"注册" forState:UIControlStateNormal];
    [search setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [items addObject:search];
    
    [search addTarget:self action:@selector(clicKReg) forControlEvents:UIControlEventTouchUpInside];
    
    [Router naviagtionWithRightItems:items];

}
- (void)clicKReg{
    
    WRegistered *w = [[WRegistered alloc]init];
    [Router push:w];
}


- (void)loadData:(ArrayBlock)block{
    
    WLoginInputCellModel *m1 = [[WLoginInputCellModel alloc]init];
    m1.title = @"输入手机号";
    
    WPasswordCellModel *m2 = [[WPasswordCellModel alloc]init];
    m2.title = @"输入密码";
    
    WForgetCellModel *forget = [[WForgetCellModel alloc]init];
    forget.title = @"忘记密码";
  
    WLoginButtonCellModel *m3 = [[WLoginButtonCellModel alloc]init];
    m3.title = @"登录";
    
    [self.array addObject:m1];
    [self.array addObject:m2];
    [self.array addObject:forget];
    [self.array addObject:m3];

    block(self.array);
}

- (void)tableIndex:(NSInteger)index{
    
    if (index == 2){
        
        WForget *m = [[WForget alloc]init];
        [Router push:m];
        
    }else if (index == 3){
        
        
    }
    
    
}

@end

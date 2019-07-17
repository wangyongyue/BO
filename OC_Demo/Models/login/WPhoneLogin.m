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
    return vc;
}

- (void)loadData:(ArrayBlock)block{
    
    WLoginInputCellModel *m1 = [[WLoginInputCellModel alloc]init];
    m1.title = @"输入手机号";
    
    WLoginInputCellModel *m2 = [[WLoginInputCellModel alloc]init];
    m2.title = @"输入密码";
  
    WLoginButtonCellModel *m3 = [[WLoginButtonCellModel alloc]init];
    m3.title = @"登录";
    
    [self.array addObject:m1];
    [self.array addObject:m2];
    [self.array addObject:m3];
    block(self.array);
}

- (void)tableIndex:(NSInteger)index{
    
    
}

@end

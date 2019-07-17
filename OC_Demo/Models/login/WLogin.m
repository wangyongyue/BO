//
//  WLogin.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WLogin.h"



@interface WLogin ()
@property(nonatomic,strong)NSMutableArray *array;

@end
@implementation WLogin

- (NSMutableArray *)array{
    if (_array == nil){
        
        _array = [[NSMutableArray alloc]init];
    }
    return  _array;
}

- (UIViewController *)getVC{
    WLoginController *vc = [[WLoginController alloc]init];
    vc.navigationItem.title = @"登录";
    vc.m = self;
    return vc;
}

- (void)loadData:(ArrayBlock)block{
    
    WLoginCellModel *m1 = [[WLoginCellModel alloc]init];
    m1.title = @"手机登录";
    
    WLoginCellModel *m2 = [[WLoginCellModel alloc]init];
    m2.title = @"注册";
    
    WLoginOtherModel *m3 = [[WLoginOtherModel alloc]init];
    m3.title = @"第三方登录";
    
    [self.array addObject:m1];
    [self.array addObject:m2];
    [self.array addObject:m3];
    block(self.array);
}

- (void)tableIndex:(NSInteger)index{
    
    if (index == 0){
        
        WPhoneLogin *m = [[WPhoneLogin alloc]init];
        [Router push:m];
    }else if (index == 1){
        
        WRegistered *m = [[WRegistered alloc]init];
        [Router push:m];

    }
    
}

@end

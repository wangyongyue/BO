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
    WTableListVC *vc = [[WTableListVC alloc]init];
    vc.navigationItem.title = @"登录";
    vc.m = self;
    return vc;
}

- (void)loadData:(ArrayBlock)block{
    
    [self.array addObject:[[OneCellModel alloc]init]];
    [self.array addObject:[[OneCellModel alloc]init]];
    [self.array addObject:[[OneCellModel alloc]init]];
    [self.array addObject:[[OneCellModel alloc]init]];
    [self.array addObject:[[OneCellModel alloc]init]];
    block(self.array);
}

- (void)tableIndex:(NSInteger)index{
    
    if (index == 0){
        
        WPhoneLogin *m = [[WPhoneLogin alloc]init];
        [Router push:m];
    }else{
        
        WRegistered *m = [[WRegistered alloc]init];
        [Router push:m];

    }
    
}

@end

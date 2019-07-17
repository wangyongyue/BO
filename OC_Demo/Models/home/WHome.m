//
//  WHome.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WHome.h"

@interface WHome ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)NSMutableArray *arrayTab;

@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WHome


- (UIViewController *)getVC{
    WTabVC *vc = [[WTabVC alloc]init];
    vc.navigationItem.title = @"home";
    vc.m = self;
    return vc;
}

- (void)loadTabData:(ArrayBlock)block{
    
    [self.arrayTab addObject:[[TestCellModel alloc]init]];
    [self.arrayTab addObject:[[TestCellModel alloc]init]];
    [self.arrayTab addObject:[[TestCellModel alloc]init]];
    block(self.array);
}
- (void)tableTabIndex:(NSInteger)index{
    
    
}
- (void)loadData:(ArrayBlock)block{
    
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    block(self.array);
}

- (void)tableIndex:(NSInteger)index{
    
    
    
}


- (NSMutableArray *)array{
    if (_array == nil){
        
        _array = [[NSMutableArray alloc]init];
    }
    return  _array;
}
- (NSMutableArray *)arrayTab{
    
    if (_arrayTab == nil){
        
        _arrayTab = [[NSMutableArray alloc]init];
    }
    return  _arrayTab;
}

@end

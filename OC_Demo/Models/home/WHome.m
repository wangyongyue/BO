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
    vc.rightM = self;
    return vc;
}
- (void)navigationItems:(ItemsBlock)block{
    
    NSMutableArray *items = [[NSMutableArray alloc]init];
    UIButton *bang = [UIButton buttonWithType:UIButtonTypeCustom];
    [bang setTitle:@"榜" forState:UIControlStateNormal];
    [bang setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    UIButton *search = [UIButton buttonWithType:UIButtonTypeCustom];
    [search setTitle:@"搜" forState:UIControlStateNormal];
    [search setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [items addObject:search];
    [items addObject:bang];

    [bang addTarget:self action:@selector(clicKBang) forControlEvents:UIControlEventTouchUpInside];
    [search addTarget:self action:@selector(clicKSearch) forControlEvents:UIControlEventTouchUpInside];


    block(items);
}
- (void)clicKBang{
    
}
- (void)clicKSearch{
    
}
- (void)loadTabData:(ArrayBlock)block{
    WHomeTabCellModel *m1 = [[WHomeTabCellModel alloc]init];
    m1.title = @"热门";
    
    WHomeTabCellModel *m2 = [[WHomeTabCellModel alloc]init];
    m2.title = @"关注";
    
    WHomeTabCellModel *m3 = [[WHomeTabCellModel alloc]init];
    m3.title = @"最新";
    
    [self.arrayTab addObject:m1];
    [self.arrayTab addObject:m2];
    [self.arrayTab addObject:m3];
    block(self.arrayTab);
}

- (void)loadData:(ArrayBlock)block{
    
    WHomeBottomCellModel *m1 = [[WHomeBottomCellModel alloc]init];
    WHost *host = [[WHost alloc]init];
    m1.subView = [host getView];
    
    WHomeBottomCellModel *m2 = [[WHomeBottomCellModel alloc]init];
    WFollow *follow = [[WFollow alloc]init];
    m2.subView = [follow getView];
    
    WHomeBottomCellModel *m3 = [[WHomeBottomCellModel alloc]init];
    WNew *new = [[WNew alloc]init];
    m3.subView = [new getView];
    
    [self.array addObject:m1];
    [self.array addObject:m2];
    [self.array addObject:m3];
    block(self.array);
    
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

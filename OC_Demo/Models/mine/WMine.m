//
//  WMine.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WMine.h"


@interface WMine ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WMine


- (UIViewController *)getVC{
    WTableListVC *vc = [[WTableListVC alloc]init];
    vc.navigationItem.title = @"我的";
    vc.m = self;
    vc.rightM = self;
    return vc;
}

- (void)navigationItems{

    NSMutableArray *items = [[NSMutableArray alloc]init];
    UIButton *bang = [UIButton buttonWithType:UIButtonTypeCustom];
    [bang setTitle:@"编辑" forState:UIControlStateNormal];
    [bang setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
   
    [items addObject:bang];
    
    [bang addTarget:self action:@selector(clicKBang) forControlEvents:UIControlEventTouchUpInside];
    [Router naviagtionWithRightItems:[NSArray arrayWithObject:bang]];
    
}
- (void)clicKBang{
    
    WPersonal *m = [[WPersonal alloc]init];
    [Router push:m];
    
}
- (void)loadData:(ArrayBlock)block{
    
    self.block = block;
    [POST request:self.http model:self];
}
- (void)postWithData:(NSDictionary *)response{
    
    WMineHeaderCellModel *header = [[WMineHeaderCellModel alloc]init];
    header.title = @"头像";
    
    WMineLineCellModel *line = [[WMineLineCellModel alloc]init];
    
    WMineCellModel *gongxian = [[WMineCellModel alloc]init];
    gongxian.title = @"贡献";
    
    WMineCellModel *qianbao = [[WMineCellModel alloc]init];
    qianbao.title = @"钱包";
    
    WMineCellModel *dengji = [[WMineCellModel alloc]init];
    dengji.title = @"等级";
    
    WMineCellModel *shezhi = [[WMineCellModel alloc]init];
    shezhi.title = @"设置";
    
  
    
    [self.array addObject:header];
    [self.array addObject:line];
    [self.array addObject:gongxian];
    [self.array addObject:qianbao];
    [self.array addObject:dengji];
    [self.array addObject:shezhi];
   
    self.block(self.array);
    
}
- (void)postWithError:(NSString *)error{
    
    
}
- (void)tableIndex:(NSInteger)index{
    
    if (index == 0){
        
       
        
    }else if (index == 3){
        
        WMoney *m = [[WMoney alloc]init];
        [Router push:m];
        
    }else if (index == 5){
        
        WSetUp *m = [[WSetUp alloc]init];
        [Router push:m];
    }
    
}



- (NSMutableArray *)array{
    if (_array == nil){
        
        _array = [[NSMutableArray alloc]init];
    }
    return  _array;
}
- (WHttpMine *)http{
    
    if (_http == nil){
        
        _http = [[WHttpMine alloc]init];
    }
    return  _http;
}
@end

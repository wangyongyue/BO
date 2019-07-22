//
//  WShow.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WShow.h"

@interface WShow ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WShow


- (UIViewController *)getVC{
    WShowViewController *vc = [[WShowViewController alloc]init];
    vc.navigationItem.title = @"show";
    vc.m = self;
    return vc;
}

- (void)loadData:(ArrayBlock)block{
    
    self.block = block;
    [POST request:self.http model:self];
}
- (void)postWithHttp:(id<HttpProtocol>)http rrror:(NSString *)error{
    
    
}
- (void)postWithHttp:(id<HttpProtocol>)http data:(NSDictionary *)response{
    WHomeBottomCellModel *m1 = [[WHomeBottomCellModel alloc]init];
    WShowData *show1 = [[WShowData alloc]init];
    m1.subView = [show1 getView];
    [m1.subView load];
    
    WHomeBottomCellModel *m2 = [[WHomeBottomCellModel alloc]init];
    WShowData *show2 = [[WShowData alloc]init];
    m2.subView = [show2 getView];
    
    
    WHomeBottomCellModel *m3 = [[WHomeBottomCellModel alloc]init];
    WShowData *show3 = [[WShowData alloc]init];
    m3.subView = [show3 getView];
    
    
    [self.array addObject:m1];
    [self.array addObject:m2];
    [self.array addObject:m3];
    
    self.block(self.array);
  
}

- (void)tableIndex:(NSInteger)index{
    
    if (index == 0){
        
        WPersonal *m = [[WPersonal alloc]init];
        [Router push:m];
        
    }else if (index == 1){
        
        WMoney *m = [[WMoney alloc]init];
        [Router push:m];
        
    }else if (index == 2){
        
        WMoney *m = [[WMoney alloc]init];
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

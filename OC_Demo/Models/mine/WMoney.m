//
//  WMoney.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WMoney.h"

@interface WMoney ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WMoney


- (UIViewController *)getVC{
    WTableListVC *vc = [[WTableListVC alloc]init];
    vc.navigationItem.title = @"充值";
    vc.m = self;
    return vc;
}

- (void)loadData:(ArrayBlock)block{
    
    self.block = block;
    [POST request:self.http model:self];
}
- (void)postWithHttp:(id<HttpProtocol>)http rrror:(NSString *)error{
    
    
}
- (void)postWithHttp:(id<HttpProtocol>)http data:(NSDictionary *)response{    WLRTitleCellModel *m = [[WLRTitleCellModel alloc]init];
    m.title = @"10200   6元";
    [self.array addObject:m];
    self.block(self.array);
    
}

- (void)tableIndex:(NSInteger)index{
    
   
    
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

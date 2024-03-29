//
//  WFans.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WFans.h"

@interface WFans ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WFans


- (UIViewController *)getVC{
    WTableListVC *vc = [[WTableListVC alloc]init];
    vc.navigationItem.title = @"粉丝";
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
    for (int i = 0; i < 10; i ++) {
        
        WFollowCellModel *model = [[WFollowCellModel alloc]init];
        model.title = [NSString stringWithFormat:@"fans%d",i];
        [self.array addObject:model];
    }
    
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

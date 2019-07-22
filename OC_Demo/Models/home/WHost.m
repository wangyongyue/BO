//
//  WHost.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WHost.h"

@interface WHost ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WHost

- (UIView *)getView{
    
    WCollectionListView *v = [[WCollectionListView alloc]init];
    v.m = self;
    return v;
}

- (void)loadData:(ArrayBlock)block{
    
    self.block = block;
    [POST request:self.http model:self];
}
- (void)postWithHttp:(id<HttpProtocol>)http rrror:(NSString *)error{
    
    
}
- (void)postWithHttp:(id<HttpProtocol>)http data:(NSDictionary *)response{
    for (int i = 0; i < 10; i ++) {
        
        WHomeHostCellModel *model = [[WHomeHostCellModel alloc]init];
        model.title = [NSString stringWithFormat:@"host%d",i];
        [self.array addObject:model];
    }
   
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

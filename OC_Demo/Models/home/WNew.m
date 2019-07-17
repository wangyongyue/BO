//
//  WNew.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WNew.h"

@interface WNew ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WNew

- (UIView *)getView{
    
    WCollectionListView *v = [[WCollectionListView alloc]init];
    v.m = self;
    return v;
}

- (void)loadData:(ArrayBlock)block{
    
    self.block = block;
    [POST request:self.http model:self];
}
- (void)postWithData:(NSDictionary *)response{
    
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    [self.array addObject:[[TestCellModel alloc]init]];
    self.block(self.array);
    
}
- (void)postWithError:(NSString *)error{
    
    
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

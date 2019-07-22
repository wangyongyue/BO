//
//  WAnchorEnd.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WAnchorEnd.h"

@interface WAnchorEnd ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WAnchorEnd


- (UIViewController *)getVC{
    WTableListVC *vc = [[WTableListVC alloc]init];
    vc.navigationItem.title = @"anEnd";
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
   
    WEndHeaderCellModel *header = [[WEndHeaderCellModel alloc]init];
    header.title = @"头像";
    
    WEndTitleCellModel *title = [[WEndTitleCellModel alloc]init];
    title.title = @"直播已经结束";
    
    WEndNumberCellModel *number = [[WEndNumberCellModel alloc]init];
    number.title = @"观看人数  120 人";
    
    WEndFocusCellModel *focus = [[WEndFocusCellModel alloc]init];
    focus.title = @"分享直播";
    
    WEndBackCellModel *back = [[WEndBackCellModel alloc]init];
    back.title = @"返回首页";
    
    [self.array addObject:header];
    [self.array addObject:title];
    [self.array addObject:number];
    [self.array addObject:focus];
    [self.array addObject:back];
    
    self.block(self.array);
    
}

- (void)tableIndex:(NSInteger)index{
    
    if (index == 4){
        
        [Router pop];
        
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

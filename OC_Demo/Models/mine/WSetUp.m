//
//  WSetUp.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WSetUp.h"

@interface WSetUp ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WSetUp


- (UIViewController *)getVC{
    WTableListVC *vc = [[WTableListVC alloc]init];
    vc.navigationItem.title = @"设置";
    vc.m = self;
    return vc;
}

- (void)loadData:(ArrayBlock)block{
    
    self.block = block;
    [POST request:self.http model:self];
}
- (void)postWithData:(NSDictionary *)response{
    
    WLRTitleCellModel *aid = [[WLRTitleCellModel alloc]init];
    aid.title = @"ID号";
    
    WLRTitleCellModel *person = [[WLRTitleCellModel alloc]init];
    person.title = @"个人资料";
    
    WMineLineCellModel *line = [[WMineLineCellModel alloc]init];
    
    WLRTitleCellModel *cache = [[WLRTitleCellModel alloc]init];
    cache.title = @"清理缓存";
    
    WTitleImgCellModel *zhibo = [[WTitleImgCellModel alloc]init];
    zhibo.title = @"直播公约";
    
    WTitleImgCellModel *about = [[WTitleImgCellModel alloc]init];
    about.title = @"关于我们";
    
    WMineLineCellModel *line1 = [[WMineLineCellModel alloc]init];

    WCTitleCellModel *logOut = [[WCTitleCellModel alloc]init];
    logOut.title = @"退出";
    
    [self.array addObject:aid];
    [self.array addObject:person];
    [self.array addObject:line];
    [self.array addObject:cache];
    [self.array addObject:zhibo];
    [self.array addObject:about];
    [self.array addObject:line1];
    [self.array addObject:logOut];
    
    self.block(self.array);
    
}
- (void)postWithError:(NSString *)error{
    
    
}
- (void)tableIndex:(NSInteger)index{
    
    if (index == 1){
        
        WPersonal *m = [[WPersonal alloc]init];
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

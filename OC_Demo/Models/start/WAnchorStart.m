//
//  WAnchorStart.m
//  OC_Demo
//
//  Created by apple on 2019/7/18.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WAnchorStart.h"

@interface WAnchorStart ()
@property(nonatomic,strong)NSMutableArray *array;

@end
@implementation WAnchorStart


- (UIViewController *)getVC{
    WTableListVC *vc = [[WTableListVC alloc]init];
    vc.navigationItem.title = @"anEnd";
    vc.m = self;
    return vc;
}

- (void)loadData:(ArrayBlock)block{
    
    WStartTopCellModel *top = [[WStartTopCellModel alloc]init];
    
    WStartInputCellModel *input = [[WStartInputCellModel alloc]init];
    input.title = @"你想要直播什么呢？";
    WStartShareCellModel *share = [[WStartShareCellModel alloc]init];

    WStartButtonCellModel *start = [[WStartButtonCellModel alloc]init];
    start.title = @"开始直播";
    [self.array addObject:top];
    [self.array addObject:input];
    [self.array addObject:share];
    [self.array addObject:start];

    block(self.array);
    
    
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

@end

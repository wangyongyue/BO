//
//  WBang.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WBang.h"

@interface WBang ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;
@property(nonatomic,copy)LimitBlock lBlock;

@end
@implementation WBang


- (UIViewController *)getVC{
    WWebVC *vc = [[WWebVC alloc]init];
    vc.navigationItem.title = @"web";
    vc.m = self;
    vc.rightM = self;
    return vc;
}
- (void)loadWithUrl:(StringBlock)block{
    
    block(@"https://www.baidu.com");
}
- (void)goBack:(LimitBlock)block{
    
    self.lBlock = block;
}
- (void)navigationItems{
    
    NSMutableArray *items = [[NSMutableArray alloc]init];
    UIButton *bang = [UIButton buttonWithType:UIButtonTypeCustom];
    [bang setTitle:@"back" forState:UIControlStateNormal];
    [bang setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    UIButton *search = [UIButton buttonWithType:UIButtonTypeCustom];
    [search setTitle:@"关闭" forState:UIControlStateNormal];
    [search setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [items addObject:search];
    
    [bang addTarget:self action:@selector(clicKBack) forControlEvents:UIControlEventTouchUpInside];
    [search addTarget:self action:@selector(clicKClose) forControlEvents:UIControlEventTouchUpInside];
    
    [Router naviagtionWithRightItems:items];
    [Router naviagtionWithBackItem:bang];
    
}
- (void)clicKBack{
    if (self.lBlock()){
        
        [Router pop];
    }
}
- (void)clicKClose{
    
    [Router pop];
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

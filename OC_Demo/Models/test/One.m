//
//  One.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "One.h"

#import "TwoCell.h"
#import "ThreeCell.h"
#import "TestViewController.h"
#import "TwoCellModel.h"
#import "ThreeCellModel.h"
#import "TestCellModel.h"
#import "TestCollectionViewController.h"

@interface One () <POSTProtocol>
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpPhoneLogin *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation One

- (NSMutableArray *)array{
    if (_array == nil){
        
        _array = [[NSMutableArray alloc]init];
    }
    return  _array;
}
- (WHttpPhoneLogin *)http{
    
    if (_http == nil){
        
        _http = [[WHttpPhoneLogin alloc]init];
    }
    return  _http;
}

- (UIViewController *)getVC{
    
    
    TestViewController *vc = [[TestViewController alloc]init];
    vc.m = self;
    return vc;
    
}

- (void)loadData:(ArrayBlock)block{
    
    self.block = block;
    [POST request:self.http model:self];
}
- (void)postWithHttp:(id<HttpProtocol>)http data:(NSDictionary *)response{

    [self.array addObject:[[OneCellModel alloc]init]];
    [self.array addObject:[[OneCellModel alloc]init]];
    [self.array addObject:[[OneCellModel alloc]init]];
    [self.array addObject:[[OneCellModel alloc]init]];
    [self.array addObject:[[OneCellModel alloc]init]];
    self.block(self.array);
    
}
- (void)postWithHttp:(id<HttpProtocol>)http rrror:(NSString *)error{

    
}
- (void)tableIndex:(NSInteger)index{
    
    id model = self.array[index];
    NSLog(NSStringFromClass([model class]));
}
@end

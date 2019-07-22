//
//  WShowData.m
//  OC_Demo
//
//  Created by apple on 2019/7/19.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WShowData.h"

@interface WShowData ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)NSMutableArray *messageArray;

@property(nonatomic,strong)WHttpMine *http;

@end
@implementation WShowData

- (UIView *)getView{
    
    WShowView *v = [[WShowView alloc]init];
    v.m = self;
    return v;
}

- (void)loadShowTop:(ArrayBlock)block{
    
    WShowHeaderCellModel *m = [[WShowHeaderCellModel alloc]init];
    WShowHeaderCellModel *m1 = [[WShowHeaderCellModel alloc]init];
    WShowHeaderCellModel *m2 = [[WShowHeaderCellModel alloc]init];
    WShowHeaderCellModel *m3 = [[WShowHeaderCellModel alloc]init];
    WShowHeaderCellModel *m4 = [[WShowHeaderCellModel alloc]init];
    m.title = @"w";
    m1.title = @"w1";
    m2.title = @"w2";
    m3.title = @"w3";
    m4.title = @"w4";
    
    [self.array addObject:m];
    [self.array addObject:m1];
    [self.array addObject:m2];
    [self.array addObject:m3];
    [self.array addObject:m4];
    block(self.array);
    
}
- (void)loadShowMessage:(ArrayBlock)block{
    
    WShowMessageCellModel *m = [[WShowMessageCellModel alloc]init];
    WShowMessageCellModel *m1 = [[WShowMessageCellModel alloc]init];
    WShowMessageCellModel *m2 = [[WShowMessageCellModel alloc]init];
    WShowMessageCellModel *m3 = [[WShowMessageCellModel alloc]init];
    WShowMessageCellModel *m4 = [[WShowMessageCellModel alloc]init];
    m.title = @"message";
    m1.title = @"message1";
    m2.title = @"message2";
    m3.title = @"message3";
    m4.title = @"message4";

    [self.messageArray addObject:m];
    [self.messageArray addObject:m1];
    [self.messageArray addObject:m2];
    [self.messageArray addObject:m3];
    [self.messageArray addObject:m4];

    block(self.messageArray);

    
}


- (NSMutableArray *)array{
    if (_array == nil){
        
        _array = [[NSMutableArray alloc]init];
    }
    return  _array;
}
- (NSMutableArray *)messageArray{
    if (_messageArray == nil){
        
        _messageArray = [[NSMutableArray alloc]init];
    }
    return  _messageArray;
}


- (WHttpMine *)http{
    
    if (_http == nil){
        
        _http = [[WHttpMine alloc]init];
    }
    return  _http;
}
@end

//
//  WPersonal.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WPersonal.h"

@interface WPersonal ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)WHttpMine *http;
@property(nonatomic,copy)ArrayBlock block;

@end
@implementation WPersonal


- (UIViewController *)getVC{
    WTableListVC *vc = [[WTableListVC alloc]init];
    vc.navigationItem.title = @"个人资料";
    vc.m = self;
    return vc;
}

- (void)loadData:(ArrayBlock)block{
    
    self.block = block;
    [POST request:self.http model:self];
}
- (void)postWithData:(NSDictionary *)response{
    
    WPersonHeaderCellModel *header = [[WPersonHeaderCellModel alloc]init];
    header.title = @"头像";

    WMineLineCellModel *line = [[WMineLineCellModel alloc]init];
    
    WPersonCellModel *name = [[WPersonCellModel alloc]init];
    name.title = @"昵称";
    name.subTitle = @"123";

    WPersonCellModel *sex = [[WPersonCellModel alloc]init];
    sex.title = @"性别";
    sex.subTitle = @"123";

    WPersonCellModel *age = [[WPersonCellModel alloc]init];
    age.title = @"年龄";
    age.subTitle = @"123";

    WPersonCellModel *qianming = [[WPersonCellModel alloc]init];
    qianming.title = @"个人签名";
    qianming.subTitle = @"123";

    WPersonCellModel *phone = [[WPersonCellModel alloc]init];
    phone.title = @"手机号";
    phone.subTitle = @"123";

    
    [self.array addObject:header];
    [self.array addObject:line];
    [self.array addObject:name];
    [self.array addObject:sex];
    [self.array addObject:age];
    [self.array addObject:qianming];
    [self.array addObject:phone];
    
    
    self.block(self.array);
    
}
- (void)postWithError:(NSString *)error{
    
    
}
- (void)tableIndex:(NSInteger)index{
    
    if (index == 0){
        
//        WPersonEditor *m = [[WPersonEditor alloc]init];
//        [Router push:m];
        
        WEditorView *view = [[WEditorView alloc]init];
        [view show:@"sdf" block:^(NSString * _Nonnull str) {
           
            NSLog(str);
        }];
        
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

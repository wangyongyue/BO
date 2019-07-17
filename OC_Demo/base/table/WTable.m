//
//  WTable.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WTable.h"
#import "OneCell.h"
#import "UITableViewCell+CellFunc.h"


@interface WTable ()
@property(nonatomic,copy)IndexBlock indexBlock;

@end
@implementation WTable

- (instancetype)initWithIndex:(IndexBlock)index{
    self = [super initWithFrame:CGRectZero style:UITableViewStylePlain];
    if (self){
        
        self.delegate = self;
        self.dataSource = self;
        self.indexBlock = index;
        self.tableFooterView = [[UIView alloc]init];
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        NSMutableArray *arr = [Cells getTableCells];
        for (Class aclass in arr){
            [self registerClass:aclass forCellReuseIdentifier:NSStringFromClass(aclass)];
        }
    }
    return self;
}
- (void)registerClass:(Class)aClass{
    
    [self registerClass:aClass forCellReuseIdentifier:NSStringFromClass(aClass)];
}
- (void)setArray:(NSMutableArray *)array{
    _array = array;
    [self reloadData];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    id<CellModelProtocol> model = self.array[indexPath.row];

    return [model getCellHeight];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    id<CellModelProtocol> model = self.array[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[model getCellID]];
    [cell setModel:model];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self.array count];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.indexBlock(indexPath.row);
}


@end

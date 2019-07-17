//
//  WCollectionView.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WCollectionView.h"
#import "OneCellModel.h"
#import "UICollectionViewCell+CellFunc.h"

@interface WCollectionView ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,copy)IndexBlock indexBlock;

@end
@implementation WCollectionView


- (instancetype)initWithLayout:(UICollectionViewLayout *)layout inndex:(IndexBlock)index{
    self = [super initWithFrame:CGRectZero collectionViewLayout:layout];
    if (self){
        self.backgroundColor = UIColor.whiteColor;
        self.delegate = self;
        self.dataSource = self;
        self.indexBlock = index;
        
        NSMutableArray *arr = [Cells getCellectionCells];
        for (Class aclass in arr){
            
            [self registerClass:aclass forCellWithReuseIdentifier:NSStringFromClass(aclass)];
        }
        
    }
    return self;
}
- (void)registerClass:(Class)aClass{
    
    [self registerClass:aClass forCellWithReuseIdentifier:NSStringFromClass(aClass)];
}
- (void)setArray:(NSMutableArray *)array{
    _array = array;
    [self reloadData];
    
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.array.count;
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    id<CellModelProtocol> model = self.array[indexPath.row];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[model getCellID] forIndexPath:indexPath];
    [cell setModel:model];
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    self.indexBlock(indexPath.row);

}

@end

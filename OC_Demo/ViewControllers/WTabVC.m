//
//  WTabVC.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WTabVC.h"

@interface WTabVC ()
@property(nonatomic,strong)WCollectionView *collection;
@property(nonatomic,strong)WCollectionView *collectionBottom;


@end

@implementation WTabVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    __weak __typeof(self) weakSelf  = self;

    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(WWIDTH/3, 50);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    WCollectionView *collection = [[WCollectionView alloc]initWithLayout:layout inndex:^(NSInteger index) {
        
        [self.m tableTabIndex:index];
        
        [weakSelf.collectionBottom setContentOffset:CGPointMake(WWIDTH * index, 0) animated:YES];

    }];
    [self.view addSubview:collection];
    
    
    [collection mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(WTOP);
        make.height.offset(50);
        make.left.offset(0);
        make.right.offset(0);

    }];
    
    
    
    UICollectionViewFlowLayout *layoutBottom = [[UICollectionViewFlowLayout alloc]init];
    layoutBottom.itemSize = CGSizeMake(WWIDTH, WHEIGHT - WTOP - 50);
    layoutBottom.minimumLineSpacing = 0;
    layoutBottom.minimumInteritemSpacing = 0;
    layoutBottom.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    WCollectionView *collectionBottom = [[WCollectionView alloc]initWithLayout:layoutBottom inndex:^(NSInteger index) {
        
        [self.m tableIndex:index];
        
       
    }];
    [self.view addSubview:collectionBottom];
    collectionBottom.pagingEnabled = YES;
    [collectionBottom mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(WTOP + 50);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);
        
    }];
    
    
    
    [self.m loadTabData:^(NSArray * _Nonnull array) {
        
        collection.array = array;
        
    }];
    
    [self.m loadData:^(NSArray * _Nonnull array) {
        
        collectionBottom.array = array;
        
    }];
    
    
    self.collectionBottom = collectionBottom;
    self.collection = collection;

}

@end

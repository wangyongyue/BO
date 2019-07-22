//
//  WTabVC.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WTabVC.h"

@interface WTabVC ()<UIScrollViewDelegate>
@property(nonatomic,strong)WCollectionView *collection;
@property(nonatomic,strong)WCollectionView *collectionBottom;
@property(nonatomic,strong)UIView *lineView;
@property(nonatomic,strong)UIView *blueView;


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
                
        [UIView animateWithDuration:.3 animations:^{
            
            CGRect frame = self.lineView.frame;
            frame.origin.x = WWIDTH/3 * index;
            self.lineView.frame = frame;
            
        }];
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
                
       
    }];
    [self.view addSubview:collectionBottom];
    collectionBottom.pagingEnabled = YES;
    collectionBottom.delegate = self;
    [collectionBottom mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(WTOP + 50);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);
        
    }];
    
    self.lineView = [[UIView alloc]init];
    [self.view addSubview:self.lineView];
    self.lineView.backgroundColor = UIColor.whiteColor;
    self.lineView.frame = CGRectMake(0, 50 + WTOP, WWIDTH/3, 5);
    
    self.blueView = [[UIView alloc]init];
    [self.lineView addSubview:self.blueView];
    self.blueView.backgroundColor = UIColor.blueColor;
    self.blueView.frame = CGRectMake(WWIDTH/3/4, 0, WWIDTH/3/2, 5);
    
    
    [self.m loadTabData:^(NSArray * _Nonnull array) {
        
        collection.array = array;
        
    }];
    
    [self.m loadData:^(NSArray * _Nonnull array) {
        
        collectionBottom.array = array;
        
    }];
    
    
    self.collectionBottom = collectionBottom;
    self.collection = collection;
    
    
    //
    [self.rightM navigationItems];


}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    CGFloat x = scrollView.contentOffset.x / WWIDTH;
    [UIView animateWithDuration:.3 animations:^{
        
        CGRect frame = self.lineView.frame;
        frame.origin.x = WWIDTH/3 * x;
        self.lineView.frame = frame;
        
    }];
    
    NSInteger index = (NSInteger)scrollView.contentOffset.x/WWIDTH;
    WHomeBottomCellModel *model  = self.collectionBottom.array[index];
    if (model.isLoad == NO){
        
        [model.subView load];
    }
    model.isLoad = YES;
    
}


@end

//
//  WShowViewController.m
//  OC_Demo
//
//  Created by apple on 2019/7/19.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WShowViewController.h"

@interface WShowViewController ()<UIScrollViewDelegate>
@property(nonatomic,strong)NSArray *array;
@property(nonatomic,strong)WCollectionView *collection;

@end

@implementation WShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(WWIDTH, WHEIGHT - WTOP);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    WCollectionView *collection = [[WCollectionView alloc]initWithLayout:layout inndex:^(NSInteger index) {
        
    }];
    [self.view addSubview:collection];
    
    collection.pagingEnabled = YES;
    collection.delegate = self;
    collection.frame = CGRectMake(0, WTOP, WWIDTH, WHEIGHT - WTOP);
    
    __weak __typeof(self) weakSelf  = self;
    
    [self.m loadData:^(NSArray * _Nonnull array) {
        
        collection.array = array;
        
    }];
    self.collection = collection;
    [self.rightM navigationItems];
    
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSInteger index = (NSInteger)(scrollView.contentOffset.y/(WHEIGHT - WTOP));
    WHomeBottomCellModel *model  = self.collection.array[index];
    [model.subView load];
}


@end

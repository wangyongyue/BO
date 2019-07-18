//
//  WCollectionListVC.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WCollectionListVC.h"

@interface WCollectionListVC ()
@property(nonatomic,strong)NSArray *array;

@end

@implementation WCollectionListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
   
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(WWIDTH/2, WWIDTH/2);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    WCollectionView *collection = [[WCollectionView alloc]initWithLayout:layout inndex:^(NSInteger index) {
        
    }];
    [self.view addSubview:collection];
    
    
    collection.frame = CGRectMake(0, WTOP, WWIDTH, WHEIGHT - WTOP);

    __weak __typeof(self) weakSelf  = self;
    
    [self.m loadData:^(NSArray * _Nonnull array) {
        
        collection.array = array;
        
    }];
    
    [self.rightM navigationItems];

}


@end

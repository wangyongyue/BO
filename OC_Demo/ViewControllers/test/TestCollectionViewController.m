//
//  TestCollectionViewController.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "TestCollectionViewController.h"
#import "WCollectionView.h"
#import "TestCollectionViewCell.h"

@interface TestCollectionViewController ()
@property(nonatomic,strong)NSArray *array;

@end

@implementation TestCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    CGFloat w = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(w/2, w/2);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    WCollectionView *collection = [[WCollectionView alloc]initWithLayout:layout inndex:^(NSInteger index) {
        
    }];
    [self.view addSubview:collection];


    collection.frame = CGRectMake(0, 64, w, h - 64);
    
    __weak __typeof(self) weakSelf  = self;
    
    [self.m loadData:^(NSArray * _Nonnull array) {
        
        collection.array = array;
        
    }];
   
}


@end

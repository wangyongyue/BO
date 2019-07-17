//
//  WCollectionListView.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WCollectionListView.h"

@interface WCollectionListView ()
@property(nonatomic,strong)WCollectionView *collection;

@end


@implementation WCollectionListView

- (WCollectionView *)collection{
    if (_collection == nil){
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        layout.itemSize = CGSizeMake(WWIDTH/2, WWIDTH/2);
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        _collection = [[WCollectionView alloc]initWithLayout:layout inndex:^(NSInteger index) {
            
            [self.m tableIndex:index];
            
            
        }];
    }
    return _collection;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addSubview:self.collection];
        [self.collection mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.bottom.offset(0);
            make.left.offset(0);
            make.right.offset(0);

        }];
    }
    return self;
}

- (void)load{
    
    __weak __typeof(self) weakSelf  = self;

    [self.m loadData:^(NSArray * _Nonnull array) {
        
        weakSelf.collection.array = array;
        
    }];
    
    
}

@end

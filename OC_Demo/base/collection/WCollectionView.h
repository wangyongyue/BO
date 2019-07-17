//
//  WCollectionView.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^IndexBlock)(NSInteger index);

NS_ASSUME_NONNULL_BEGIN

@interface WCollectionView : UICollectionView
@property(nonatomic,strong)NSMutableArray *array;

- (instancetype)initWithLayout:(UICollectionViewLayout *)layout inndex:(IndexBlock)index;
- (void)registerClass:(Class)aClass;
@end

NS_ASSUME_NONNULL_END

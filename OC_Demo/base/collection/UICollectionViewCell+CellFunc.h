//
//  UICollectionViewCell+CellFunc.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OneCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionViewCell (CellFunc)
- (void)setModel:(id<CellModelProtocol>)model;

@end

NS_ASSUME_NONNULL_END

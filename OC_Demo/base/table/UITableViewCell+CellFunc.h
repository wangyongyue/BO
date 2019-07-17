//
//  UITableViewCell+CellFunc.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OneCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface UITableViewCell (CellFunc)
- (void)setModel:(id<CellModelProtocol>)model;

@end

NS_ASSUME_NONNULL_END

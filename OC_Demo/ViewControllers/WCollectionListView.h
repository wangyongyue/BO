//
//  WCollectionListView.h
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface WCollectionListView : UIView <ViewLoadProtocol>
@property(nonatomic,strong)id<TableDataProtocol> m;

@end

NS_ASSUME_NONNULL_END

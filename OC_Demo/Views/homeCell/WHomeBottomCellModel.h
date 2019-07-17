//
//  WHomeBottomCellModel.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface WHomeBottomCellModel : NSObject <CellModelProtocol>
@property(nonatomic,strong)UIView<ViewLoadProtocol> *subView;
@property(nonatomic,assign)BOOL isLoad;

@end

NS_ASSUME_NONNULL_END

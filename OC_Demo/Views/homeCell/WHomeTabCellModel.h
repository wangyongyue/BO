//
//  WHomeTabCellModel.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"
NS_ASSUME_NONNULL_BEGIN

@interface WHomeTabCellModel : NSObject <CellModelProtocol>
@property(nonatomic,copy)NSString *title;
@end

NS_ASSUME_NONNULL_END

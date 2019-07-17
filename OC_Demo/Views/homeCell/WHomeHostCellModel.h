//
//  WHomeHostCellModel.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface WHomeHostCellModel : NSObject <CellModelProtocol>
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *url;


@end

NS_ASSUME_NONNULL_END

//
//  OneCellModel.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN
@interface OneCellModel : NSObject <CellModelProtocol>
@property(nonatomic,copy)NSString *name;

@end

NS_ASSUME_NONNULL_END

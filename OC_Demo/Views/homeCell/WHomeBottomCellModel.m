//
//  WHomeBottomCellModel.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WHomeBottomCellModel.h"

@implementation WHomeBottomCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WHomeBottomCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

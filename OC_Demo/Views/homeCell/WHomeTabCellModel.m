//
//  WHomeTabCellModel.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WHomeTabCellModel.h"

@implementation WHomeTabCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WHomeTabCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}

@end

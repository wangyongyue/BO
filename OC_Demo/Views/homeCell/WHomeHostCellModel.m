//
//  WHomeHostCellModel.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WHomeHostCellModel.h"

@implementation WHomeHostCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([WHomeHostCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

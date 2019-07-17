//
//  ThreeCellModel.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "ThreeCellModel.h"
#import "ThreeCell.h"

@implementation ThreeCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([ThreeCell class]);
}
- (CGFloat)getCellHeight{
    
    return 200;
}
@end

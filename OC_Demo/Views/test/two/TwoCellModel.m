//
//  TwoCellModel.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "TwoCellModel.h"
#import "TwoCell.h"

@implementation TwoCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([TwoCell class]);
}
- (CGFloat)getCellHeight{
    
    return 100;
}
@end

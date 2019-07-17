//
//  OneCellModel.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "OneCellModel.h"
#import "OneCell.h"
@implementation OneCellModel

- (NSString *)getCellID{
    
    return NSStringFromClass([OneCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}

@end

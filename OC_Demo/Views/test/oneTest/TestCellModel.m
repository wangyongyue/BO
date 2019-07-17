//
//  TestCellModel.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "TestCellModel.h"
#import "TestCollectionViewCell.h"

@implementation TestCellModel
- (NSString *)getCellID{
    
    return NSStringFromClass([TestCollectionViewCell class]);
}
- (CGFloat)getCellHeight{
    
    return 50;
}
@end

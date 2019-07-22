//
//  Cells.m
//  OC_Demo
//
//  Created by apple on 2019/7/15.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "Cells.h"

@implementation Cells
+ (NSMutableArray *)getTableCells{
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:[OneCell class]];
    [array addObject:[TwoCell class]];
    [array addObject:[ThreeCell class]];

    [array addObject:[WLoginCell class]];
    [array addObject:[WLoginOtherCell class]];
    [array addObject:[WLoginInputCell class]];
    [array addObject:[WLoginButtonCell class]];
    [array addObject:[WLoginVCodeCell class]];

    
    [array addObject:[WMineHeaderCell class]];
    [array addObject:[WMineLineCell class]];
    [array addObject:[WMineCell class]];
    [array addObject:[WPersonHeaderCell class]];
    [array addObject:[WPersonCell class]];
    [array addObject:[WLRTitleCell class]];
    [array addObject:[WTitleImgCell class]];
    [array addObject:[WCTitleCell class]];
    [array addObject:[WFollowCell class]];
    [array addObject:[WPasswordCell class]];
    [array addObject:[WForgetCell class]];
    [array addObject:[WShowMessageCell class]];


    
    
    return array;
}
+ (NSMutableArray *)getCellectionCells{
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:[TestCollectionViewCell class]];
    [array addObject:[WHomeTabCell class]];
    [array addObject:[WHomeBottomCell class]];
    [array addObject:[WHomeHostCell class]];
    [array addObject:[WShowHeaderCell class]];

    
    
    return array;
}


@end

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

    return array;
}
+ (NSMutableArray *)getCellectionCells{
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:[TestCollectionViewCell class]];
    return array;
}


@end

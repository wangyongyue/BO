//
//  WShowHeaderCell.h
//  OC_Demo
//
//  Created by apple on 2019/7/19.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface WShowHeaderCell : UICollectionViewCell

@end

@interface WShowHeaderCellModel : NSObject <CellModelProtocol>
@property(nonatomic,copy)NSString *title;
@end

NS_ASSUME_NONNULL_END

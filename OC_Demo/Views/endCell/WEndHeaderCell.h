//
//  WEndHeaderCell.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/20.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface WEndHeaderCell : UITableViewCell

@end

@interface WEndHeaderCellModel : NSObject <CellModelProtocol>
@property(nonatomic,copy)NSString *title;


@end
NS_ASSUME_NONNULL_END

//
//  WStartInputCell.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/20.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface WStartInputCell : UITableViewCell

@end
@interface WStartInputCellModel : NSObject <CellModelProtocol>
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *input;


@end
NS_ASSUME_NONNULL_END

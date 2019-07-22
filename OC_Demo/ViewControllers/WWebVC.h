//
//  WWebVC.h
//  OC_Demo
//
//  Created by apple on 2019/7/19.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Interface.h"
NS_ASSUME_NONNULL_BEGIN

@interface WWebVC : UIViewController


@property(nonatomic,strong)id<WebProtocol> m;
@property(nonatomic,strong)id<NavigationItemProtocol> rightM;

@end

NS_ASSUME_NONNULL_END

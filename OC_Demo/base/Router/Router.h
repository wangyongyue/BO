//
//  Router.h
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "interface.h"
NS_ASSUME_NONNULL_BEGIN

@interface Router : NSObject
+ (void)push:(id<GetVCProtocol>)m;
+ (void)pop;
+ (void)naviagtionWithRightItems:(NSArray *)array;
+ (void)naviagtionWithBackItem:(UIButton *)button;
@end

NS_ASSUME_NONNULL_END

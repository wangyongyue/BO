//
//  POST.h
//  OC_Demo
//
//  Created by apple on 2019/7/15.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"
NS_ASSUME_NONNULL_BEGIN

@interface POST : NSObject
+ (void)request:(id<HttpProtocol> )http block:(void(^)(NSDictionary *response))block;
+ (void)request:(id<HttpProtocol> )http model:(id<POSTProtocol>)model;

@end

NS_ASSUME_NONNULL_END

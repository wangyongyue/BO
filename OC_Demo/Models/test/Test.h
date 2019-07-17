//
//  Test.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestCollectionViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface Test : NSObject <TestProtocol>
- (UIViewController *)getVC;

@end

NS_ASSUME_NONNULL_END

//
//  TestViewController.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "interface.h"
NS_ASSUME_NONNULL_BEGIN


@interface TestViewController : UIViewController
@property(nonatomic,strong)id<TestProtocol> m;

@end

NS_ASSUME_NONNULL_END

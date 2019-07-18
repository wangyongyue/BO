//
//  WEditorView.h
//  OC_Demo
//
//  Created by apple on 2019/7/18.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Interface.h"
NS_ASSUME_NONNULL_BEGIN

@interface WEditorView : UIView
- (void)show:(NSString *)string block:(ClickBlock)block;
@end

NS_ASSUME_NONNULL_END

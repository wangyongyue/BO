//
//  Interface.h
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/13.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#ifndef Interface_h
#define Interface_h


#endif /* Interface_h */
#import <UIKit/UIKit.h>
@protocol CellModelProtocol <NSObject>

- (NSString *)getCellID;
- (CGFloat)getCellHeight;

@end
@protocol HttpProtocol <NSObject>

- (NSString *)getUrl;
- (NSDictionary *)getBody;

@end
@protocol POSTProtocol <NSObject>

- (void)postWithData:(NSDictionary *)response;
- (void)postWithError:(NSString *)error;

@end

//controller
typedef void (^ArrayBlock)(NSArray * _Nonnull);

@protocol TableDataProtocol <NSObject>

- (void)loadData:(ArrayBlock)block;
- (void)tableIndex:(NSInteger)index;

@end

@protocol GetVCProtocol <NSObject>

- (UIViewController *)getVC;
@end

@protocol GetViewProtocol <NSObject>
- (UIView *)getView;
@end

@protocol ViewLoadProtocol <NSObject>
- (void)load;
@end
//tabvc
@protocol TableTabDataProtocol <NSObject>

- (void)loadTabData:(ArrayBlock)block;
- (void)tableTabIndex:(NSInteger)index;
- (void)loadData:(ArrayBlock)block;
- (void)tableIndex:(NSInteger)index;

@end

//test
@protocol TestProtocol <NSObject>

- (void)loadData:(ArrayBlock)block;
- (void)tableIndex:(NSInteger)index;

@end

#define WWIDTH UIScreen.mainScreen.bounds.size.width
#define WHEIGHT UIScreen.mainScreen.bounds.size.height
#define WTOP    64
#define WBOTTOM 44


#import "Router.h"
#import "Masonry.h"
#import "WCollectionView.h"
#import "UICollectionViewCell+CellFunc.h"
#import "WTable.h"
#import "UITableViewCell+CellFunc.h"
#import "Cells.h"
#import "POST.h"
#import "WTableListVC.h"
#import "WLogin.h"
#import "WPhoneLogin.h"
#import "WRegistered.h"
#import "One.h"
#import "WCollectionListView.h"
#import "WTabVC.h"

//model
#import "WMine.h"
#import "WPersonal.h"
#import "WPersonEditor.h"
#import "WMoney.h"
#import "WSetUp.h"
#import "WFans.h"
#import "WConcern.h"
#import "WBang.h"
#import "WShow.h"
#import "WAnchorEnd.h"
#import "WAudienceEnd.h"
#import "WHome.h"
#import "WHost.h"

//https
#import "WHttpPhoneLogin.h"
#import "WHttpMine.h"

//cells
#import "OneCell.h"
#import "TwoCell.h"
#import "ThreeCell.h"
#import "TestCollectionViewCell.h"
#import "TestCellModel.h"

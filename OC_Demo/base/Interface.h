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
typedef void (^ArrayBlock)(NSArray * _Nonnull array);
typedef void (^ClickBlock)(NSString * _Nonnull str);

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
- (void)loadData:(ArrayBlock)block;

@end

//navigationItemButton
@protocol NavigationItemProtocol <NSObject>

- (void)navigationItems;

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



//https
#import "WHttpPhoneLogin.h"
#import "WHttpMine.h"

//models
#import "WHome.h"
#import "WHost.h"
#import "WFollow.h"
#import "WNew.h"
#import "WForget.h"


//controller
#import "WLoginController.h"



//cells
#import "OneCell.h"
#import "TwoCell.h"
#import "ThreeCell.h"
#import "TestCollectionViewCell.h"
#import "TestCellModel.h"
#import "WHomeTabCell.h"
#import "WHomeTabCellModel.h"
#import "WHomeBottomCellModel.h"
#import "WHomeBottomCell.h"
#import "WHomeHostCellModel.h"
#import "WHomeHostCell.h"
#import "WLoginCell.h"
#import "WLoginCell.h"
#import "WLoginOtherCell.h"
#import "WLoginInputCell.h"
#import "WLoginVCodeCell.h"
#import "WLoginButtonCell.h"
#import "WMineHeaderCell.h"
#import "WMineLineCell.h"
#import "WMineCell.h"
#import "WPersonHeaderCell.h"
#import "WPersonCell.h"
#import "WLRTitleCell.h"
#import "WTitleImgCell.h"
#import "WCTitleCell.h"
#import "WFollowCell.h"
#import "WPasswordCell.h"
#import "WForgetCell.h"
#import "WEditorView.h"

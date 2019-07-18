//
//  Router.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "Router.h"

@implementation Router
+ (void)push:(id<GetVCProtocol>)m{
    
    UIViewController *vc = [m getVC];
    [Router pushViewController:vc];
}
+ (void)pop{
    
    [[Router currentNC] popViewControllerAnimated:YES];

}
+ (void)naviagtionWithRightItems:(NSArray *)array{

    NSMutableArray *items = [[NSMutableArray alloc]init];
    for (UIButton *item in array) {
        
        UIBarButtonItem *a = [[UIBarButtonItem alloc]initWithCustomView:item];
        [items addObject:a];
    }
    UIViewController *vc = [Router currentNC].viewControllers.lastObject;
    vc.navigationItem.rightBarButtonItems = items;

}
+ (void)naviagtionWithBackItem{
    NSMutableArray *items = [[NSMutableArray alloc]init];
    UIButton *bang = [UIButton buttonWithType:UIButtonTypeCustom];
    [bang setTitle:@"back" forState:UIControlStateNormal];
    [bang setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [bang addTarget:self action:@selector(clickBack) forControlEvents:UIControlEventTouchUpInside];
    UIViewController *vc = [Router currentNC].viewControllers.lastObject;
    vc.navigationItem.rightBarButtonItems = items;
    
}
- (void)clickBack{
    
    [Router pop];
}

+ (void)pushViewController:(UIViewController *)controller{
    
    [[Router currentNC] pushViewController:controller animated:YES];
    
}
+ (UINavigationController *)currentNC
{
    if (![[UIApplication sharedApplication].windows.lastObject isKindOfClass:[UIWindow class]]) {
        NSAssert(0, @"未获取到导航控制器");
        return nil;
    }
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    return [self getCurrentNCFrom:rootViewController];
}

//递归
+ (UINavigationController *)getCurrentNCFrom:(UIViewController *)vc
{
    if ([vc isKindOfClass:[UITabBarController class]]) {
        UINavigationController *nc = ((UITabBarController *)vc).selectedViewController;
        return [self getCurrentNCFrom:nc];
    }
    else if ([vc isKindOfClass:[UINavigationController class]]) {
        if (((UINavigationController *)vc).presentedViewController) {
            return [self getCurrentNCFrom:((UINavigationController *)vc).presentedViewController];
        }
        return [self getCurrentNCFrom:((UINavigationController *)vc).topViewController];
    }
    else if ([vc isKindOfClass:[UIViewController class]]) {
        if (vc.presentedViewController) {
            return [self getCurrentNCFrom:vc.presentedViewController];
        }
        else {
            return vc.navigationController;
        }
    }
    else {
        NSAssert(0, @"未获取到导航控制器");
        return nil;
    }
}
@end

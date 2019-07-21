//
//  ViewController.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "ViewController.h"
#import "Test.h"
#import "interface.h"
#import <objc/message.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    [button setTitle:@"login" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button1];
    [button1 setTitle:@"mine" forState:UIControlStateNormal];
    [button1 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button2];
    [button2 setTitle:@"home" forState:UIControlStateNormal];
    [button2 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button3];
    [button3 setTitle:@"show" forState:UIControlStateNormal];
    [button3 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button4];
    [button4 setTitle:@"end1" forState:UIControlStateNormal];
    [button4 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button5];
    [button5 setTitle:@"end2" forState:UIControlStateNormal];
    [button5 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button6];
    [button6 setTitle:@"bang" forState:UIControlStateNormal];
    [button6 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button7];
    [button7 setTitle:@"start" forState:UIControlStateNormal];
    [button7 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    
    button.frame = CGRectMake(50, 80, 100, 30);
    button1.frame = CGRectMake(50, 80 + 50, 100, 30);
    button2.frame = CGRectMake(50, 80 + 50 *2, 100, 30);
    button3.frame = CGRectMake(50, 80 + 50 *3, 100, 30);
    button4.frame = CGRectMake(50, 80 + 50 *4, 100, 30);
    button5.frame = CGRectMake(50, 80 + 50 *5, 100, 30);
    button6.frame = CGRectMake(50, 80 + 50 *6, 100, 30);
    button7.frame = CGRectMake(50, 80 + 50 *7, 100, 30);

    [button addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    [button1 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
    [button2 addTarget:self action:@selector(click3) forControlEvents:UIControlEventTouchUpInside];
    [button3 addTarget:self action:@selector(click4) forControlEvents:UIControlEventTouchUpInside];
    [button4 addTarget:self action:@selector(click5) forControlEvents:UIControlEventTouchUpInside];
    [button5 addTarget:self action:@selector(click6) forControlEvents:UIControlEventTouchUpInside];
    [button6 addTarget:self action:@selector(click7) forControlEvents:UIControlEventTouchUpInside];
    [button7 addTarget:self action:@selector(click8) forControlEvents:UIControlEventTouchUpInside];

}
- (void)click1{
    WLogin *m = [[WLogin alloc]init];
    [Router push:m];

}
- (void)click2{
    WMine *m = [[WMine alloc]init];
    [Router push:m];

}
- (void)click3{
    WHome *m = [[WHome alloc]init];
    [Router push:m];

}
- (void)click4{
    WShow *m = [[WShow alloc]init];
    [Router push:m];

}
- (void)click5{
    WAnchorEnd *m = [[WAnchorEnd alloc]init];
    [Router push:m];

}
- (void)click6{
    WAudienceEnd *m = [[WAudienceEnd alloc]init];
    [Router push:m];

}
- (void)click7{
    WBang *m = [[WBang alloc]init];
    [Router push:m];
    
}
- (void)click8{
    WAnchorStart *m = [[WAnchorStart alloc]init];
    [Router push:m];
    
}



@end

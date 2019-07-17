//
//  TestViewController.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "TestViewController.h"

#import "OneCell.h"
#import "TwoCell.h"
#import "ThreeCell.h"
#import "WTable.h"
@interface TestViewController ()
@property(nonatomic,strong)NSArray *array;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
    CGFloat w = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    
    WTable *table = [[WTable alloc]initWithIndex:^(NSInteger index) {
        
        [self.m tableIndex:index];
        
    }];
    [self.view addSubview:table];
   
    table.frame = CGRectMake(0, 64, w, h - 64);
    
    __weak __typeof(self) weakSelf  = self;
   
    [self.m loadData:^(NSArray * _Nonnull array) {
        
        table.array = array;
        
    }];
    
}

@end


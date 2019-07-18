//
//  WTableListVC.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WTableListVC.h"


@interface WTableListVC ()
@property(nonatomic,strong)NSArray *array;

@end

@implementation WTableListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
   
    
    WTable *table = [[WTable alloc]initWithIndex:^(NSInteger index) {
        
        [self.m tableIndex:index];
        
    }];
    [self.view addSubview:table];
    
    table.frame = CGRectMake(0, WTOP, WWIDTH, WHEIGHT - WTOP);
    
    __weak __typeof(self) weakSelf  = self;
    
    [self.m loadData:^(NSArray * _Nonnull array) {
        
        table.array = array;
        
    }];
    
    [self.rightM navigationItems];
}

@end


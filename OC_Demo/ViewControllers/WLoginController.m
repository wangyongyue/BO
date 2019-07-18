//
//  WLoginController.m
//  OC_Demo
//
//  Created by wangyongyue on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WLoginController.h"

@interface WLoginController ()
@property(nonatomic,strong)NSArray *array;

@end

@implementation WLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    
    WTable *table = [[WTable alloc]initWithIndex:^(NSInteger index) {
        
        [self.m tableIndex:index];
        
    }];
    [self.view addSubview:table];
    
    table.frame = CGRectMake(0, WTOP + 200, WWIDTH, WHEIGHT - 200);
    
    __weak __typeof(self) weakSelf  = self;
    
    [self.m loadData:^(NSArray * _Nonnull array) {
        
        table.array = array;
        
    }];
    
}

@end


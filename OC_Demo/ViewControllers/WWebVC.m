//
//  WWebVC.m
//  OC_Demo
//
//  Created by apple on 2019/7/19.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WWebVC.h"

@interface WWebVC ()<UIWebViewDelegate>
@property(nonatomic,strong)UIWebView *web;

@end

@implementation WWebVC
- (UIWebView *)web{
    if (_web == nil){
        _web = [[UIWebView alloc]init];
    }
    return _web;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.web];
    [self.web mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(WTOP);
        make.bottom.offset(0);
        make.left.offset(0);
        make.right.offset(0);

    }];
    self.web.delegate = self;
    __weak __typeof(self) weakSelf  = self;

    [self.m loadWithUrl:^(NSString * _Nonnull str) {
        NSURL *url = [[NSURL alloc]initWithString:str];
        NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
        [weakSelf.web loadRequest:request];
    }];
    
    [self.m goBack:^BOOL{
       
        if ([weakSelf.web canGoBack]){
            [self.web goBack];
            return NO;
        }
        
        return YES;
    }];
    
    [self.rightM navigationItems];
    
    
}

@end

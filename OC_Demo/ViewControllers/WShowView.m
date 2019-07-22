//
//  WShowView.m
//  OC_Demo
//
//  Created by apple on 2019/7/19.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WShowView.h"

@interface WShowView ()
@property(nonatomic,strong)WCollectionView *collection;
@property(nonatomic,strong)WTable *table;
@property(nonatomic,strong)UIView *header;
@property(nonatomic,strong)UIImageView *headerImg;
@property(nonatomic,strong)UIButton *guan;

@end

@implementation WShowView
- (UIView *)header{
    if (_header == nil){
        
        _header = [[UIView alloc]init];
        _header.backgroundColor = UIColor.lightGrayColor;
        _header.layer.cornerRadius = 20;
        _header.layer.masksToBounds = YES;
    }
    return _header;
}
- (UIImageView *)headerImg{
    if (_headerImg == nil){
        _headerImg = [[UIImageView alloc]init];
        _headerImg.layer.cornerRadius = 20;
        _headerImg.layer.masksToBounds = YES;
        _headerImg.backgroundColor = UIColor.redColor;
    }
    return _headerImg;
}
- (UIButton *)guan{
    if (_guan == nil){
        _guan = [UIButton buttonWithType:UIButtonTypeCustom];
        [_guan setTitle:@"关注" forState:UIControlStateNormal];
        [_guan setTitleColor:UIColor.redColor forState:UIControlStateNormal];
        [_guan addTarget:self action:@selector(clickGuan) forControlEvents:UIControlEventTouchUpInside];
    }
    return _guan;
}
- (void)clickGuan{
    
    
}
- (void)load{
    __weak __typeof(self) weakSelf  = self;

    [self.m loadShowTop:^(NSArray * _Nonnull array) {
        
        weakSelf.collection.array = array;
        
    }];
    
  
    [self.m loadShowMessage:^(NSArray * _Nonnull array) {
        
        weakSelf.table.array = array;
        
    }];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = UIColor.whiteColor;
        
        
        [self addSubview:self.header];
        [self.header addSubview:self.headerImg];
        [self.header addSubview:self.guan];
        
        [self.header mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(10);
            make.height.offset(40);
            make.width.offset(80);
            make.left.offset(10);
            
        }];
        [self.headerImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.width.offset(40);
            make.left.offset(0);
            make.bottom.offset(0);
            
        }];
        [self.guan mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(0);
            make.right.offset(0);
            make.bottom.offset(0);
            
        }];
       
        
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        layout.itemSize = CGSizeMake(WWIDTH/3, 50);
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        WCollectionView *collection = [[WCollectionView alloc]initWithLayout:layout inndex:^(NSInteger index) {
            
           
            
        }];
        [self addSubview:collection];
        
        
        [collection mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(10);
            make.height.offset(40);
            make.left.offset(100);
            make.right.offset(0);
            
        }];
        
        
        
        WTable *table = [[WTable alloc]initWithIndex:^(NSInteger index) {
            
        }];
        [self addSubview:table];
        
        [table mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.offset(-50);
            make.left.offset(10);
            make.right.offset(-100);
            make.height.offset(120);

        }];
        
        
      
        
        self.table = table;
        self.collection = collection;
        
        
    }
    return self;
}

@end

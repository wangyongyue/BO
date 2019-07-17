//
//  WHttpPhoneLogin.m
//  OC_Demo
//
//  Created by apple on 2019/7/17.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "WHttpPhoneLogin.h"

@implementation WHttpPhoneLogin
- (NSString *)getUrl{
    return @"/anchor";
}
- (NSDictionary *)getBody{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    
    return dic;
}
@end

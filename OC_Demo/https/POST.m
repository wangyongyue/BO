//
//  POST.m
//  OC_Demo
//
//  Created by apple on 2019/7/15.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

#import "POST.h"

@implementation POST
+ (void)request:(id<HttpProtocol> )http block:(void(^)(NSDictionary *response))block{
    
    NSString *url = [http getUrl];
    NSDictionary *body = [http getBody];
    NSMutableDictionary *response = [[NSMutableDictionary alloc]init];
    NSLog(url);
    block(response);
    
}
+ (void)request:(id<HttpProtocol> )http model:(id<POSTProtocol>)model{
    
    NSString *url = [http getUrl];
    NSDictionary *body = [http getBody];
    NSMutableDictionary *response = [[NSMutableDictionary alloc]init];
    NSLog(url);
    [model postWithData:response];
    
}




@end

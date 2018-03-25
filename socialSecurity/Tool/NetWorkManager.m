//
//  NetWorkManager.m
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#import "NetWorkManager.h"

@implementation NetWorkManager

+(void)postWithUrl:(NSString *)urlString param:(NSDictionary *)paramDic success:(successBlock)completionBlock fail:(failBlock)failerBlock {
    //1.创建会话管理者
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager POST:urlString parameters:paramDic progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        if ([[responseObject objectForKey:@"code"] isEqualToString:@"000000"]) { //请求成功
            completionBlock(responseObject);
        } else {
            if (failerBlock) {
                failerBlock([responseObject objectForKey:@"msg"]);
            } else {
                //弹窗提示
//                UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示"
//                                                                                         message:[responseObject objectForKey:@"msg"] preferredStyle:UIAlertControllerStyleAlert];
//                UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//                    NSLog(@"OK Action");
//                }];
//                [alertController addAction:okAction];
            }
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}

@end

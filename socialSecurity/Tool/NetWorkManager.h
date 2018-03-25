//
//  NetWorkManager.h
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^successBlock)(id callBackData);
typedef void(^failBlock)(id error);

@interface NetWorkManager : NSObject

+(void)postWithUrl:(NSString *)urlString param:(NSDictionary *)paramDic success:(successBlock)completionBlock fail:(failBlock)failerBlock;

@end

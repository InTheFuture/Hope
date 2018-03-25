//
//  PushTool.m
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#import "PushTool.h"

@implementation PushTool

+(void)load {
    [MGJRouter registerURLPattern:@"mgj://PushTool/ViewController" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"%@",routerParameters[MGJRouterParameterUserInfo][@"ControllerName"]);
        
        
        //通过字符串获取Class
        Class   tempVC = NSClassFromString(routerParameters[MGJRouterParameterUserInfo][@"ControllerName"]);
        //直接用tempVC 来创建对象
        id VC  = [[tempVC alloc] init];
        UIWindow *keyWindow  = [UIApplication sharedApplication].keyWindow;
        UIViewController *vc = keyWindow.rootViewController;
        while (vc.presentedViewController)
        {
            vc = vc.presentedViewController;
            
            if ([vc isKindOfClass:[UINavigationController class]])
            {
                vc = [(UINavigationController *)vc visibleViewController];
            }
            else if ([vc isKindOfClass:[UITabBarController class]])
            {
                vc = [(UITabBarController *)vc selectedViewController];
            }
        }
        [vc presentViewController:VC animated:YES completion:nil];
        
    }];
}

@end

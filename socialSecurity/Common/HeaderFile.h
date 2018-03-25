//
//  HeaderFile.h
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#ifndef HeaderFile_h
#define HeaderFile_h



//第三方库
#import <MGJRouter/MGJRouter.h> //蘑菇街中间件
#import <AFNetworking/AFNetworking.h>
#import <SDWebImage/SDWebImageManager.h>

//分类
#import "UIImage+Extension.h"

//工具
#import "UITool.h"

//自定义类
#import "NetWorkManager.h" //网络请求

//常用的宏定义 -----尺寸
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width  //屏幕宽度
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height  //屏幕高度

//常用的宏定义 -----颜色
#define White [UIColor whiteColor]  //白色

//接口定义
#define Register_Address @"http://39.107.72.34:8080/app-api/user/sign" //注册


#endif /* HeaderFile_h */


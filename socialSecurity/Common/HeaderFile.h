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
#import <AFNetworking/AFNetworking.h> //网络请求
#import <SDWebImage/SDWebImageManager.h> //图片缓存
#import <IQKeyboardManager/IQKeyboardManager.h> //键盘
#import <Masonry/Masonry.h>
#import "AppDelegate.h"

//分类
#import "UIImage+Extension.h"
#import "UIColor+Util.h"
#import "UIView+Utils.h"

//工具
#import "UITool.h"

//自定义类
#import "NetWorkManager.h" //网络请求

//常用的宏定义 -----尺寸
#define iOS7 ((floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1)? NO:YES)
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width  //屏幕宽度
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height  //屏幕高度
#define  HS_iPhoneX (SCREEN_WIDTH == 375.f && SCREEN_HEIGHT == 812.f ? YES : NO)
#define HS_NavBarHeight (iOS7 ? (HS_iPhoneX ? 88.f : 64.f) : 44.0)
#define  HS_TabbarHeight         (HS_iPhoneX ? (49.f+34.f) : 49.f)
#define  HS_TabbarSafeBottomMargin         (HS_iPhoneX ? 34.f : 0.f)
//MARK: iphone x 适配高度  //适用于 一级界面
#define IPhone_XHeight  SCREEN_HEIGHT - HS_TabbarHeight - HS_NavBarHeight
//MARK: 适用于 二级界面 ， 无底部TabBar
#define SECOND_IPhoneXHeight SCREEN_HEIGHT - HS_TabbarSafeBottomMargin - HS_TabbarHeight






//常用的宏定义 -----颜色
#define White [UIColor whiteColor]  //白色

#define APPLICATION ((AppDelegate *)[[UIApplication sharedApplication] delegate])
#define iOS11 @available(iOS 11.0, *)



//接口定义
#define Register_Address @"http://39.107.72.34:8080/app-api/user/sign" //注册


#endif /* HeaderFile_h */


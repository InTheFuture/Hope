//
//  UITool.h
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UITool : NSObject

//创建UITextField
+(UITextField *)createTextFieldWithFrame:(CGRect)frame keyBoardType:(UIKeyboardType)keyBoardType plaseHolder:(NSString *)placeHolder;

//创建Button
+(UIButton *)createButtonWithFrame:(CGRect)frame buttonType:(UIButtonType)buttonType defaultImage:(NSString *)defaultImage title:(NSString *)title titleColor:(UIColor *)titleColor;

@end

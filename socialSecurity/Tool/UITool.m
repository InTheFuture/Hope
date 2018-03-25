//
//  UITool.m
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#import "UITool.h"

@implementation UITool

//创建UITextField
+(UITextField *)createTextFieldWithFrame:(CGRect)frame keyBoardType:(UIKeyboardType)keyBoardType plaseHolder:(NSString *)placeHolder {
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    textField.keyboardType = keyBoardType;
    textField.placeholder = placeHolder;
    return textField;
}

//创建Button
+(UIButton *)createButtonWithFrame:(CGRect)frame buttonType:(UIButtonType)buttonType defaultImage:(NSString *)defaultImage title:(NSString *)title titleColor:(UIColor *)titleColor{
    UIButton *button = [UIButton buttonWithType:buttonType];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    if (defaultImage) {
        [button setBackgroundImage:[UIImage imageNamed:defaultImage] forState:UIControlStateNormal];
    }
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    return button;
}

@end

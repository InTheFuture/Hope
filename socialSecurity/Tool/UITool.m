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

//创建ScrollView
+(UIScrollView *)createScrollViewWithFrame:(CGRect)frame showsHorizontalScrollIndicator:(BOOL)horizontalShow showsVerticalScrollIndicator:(BOOL)verticalShow bounces:(BOOL)isBounces delegate:(id)delegate {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:frame];
    scrollView.backgroundColor = White;
    scrollView.showsVerticalScrollIndicator = verticalShow;
    scrollView.showsHorizontalScrollIndicator = horizontalShow;
    scrollView.bounces = isBounces;
    scrollView.delegate = delegate;
    return scrollView;
}

//创建ImageView
+(UIImageView *)createImageViewWithFrame:(CGRect)frame image:(NSString *)imageName {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage imageNamed:imageName];
    return imageView;
}

//创建Label
+(UILabel *)createLabelWithFrame:(CGRect)frame title:(NSString *)title font:(CGFloat)font textColor:(UIColor *)textColor text:(NSString *)text backGroundColor:(UIColor *)backGroundColor {
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:font];
    label.backgroundColor = backGroundColor;
    [label sizeToFit];
    return label;
}

@end

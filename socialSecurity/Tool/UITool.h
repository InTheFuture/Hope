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
//创建ScrollView
+(UIScrollView *)createScrollViewWithFrame:(CGRect)frame showsHorizontalScrollIndicator:(BOOL)horizontalShow showsVerticalScrollIndicator:(BOOL)VerticalShow bounces:(BOOL)isBounces delegate:(id)delegate;
//创建ImageView
+(UIImageView *)createImageViewWithFrame:(CGRect)frame image:(NSString *)imageName;
//创建Label
+(UILabel *)createLabelWithFrame:(CGRect)frame title:(NSString *)title font:(CGFloat)font textColor:(UIColor *)textColor text:(NSString *)text backGroundColor:(UIColor *)backGroundColor;

@end

//
//  LoginInViewController.m
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#import "LoginInViewController.h"

@interface LoginInViewController ()

@end

@implementation LoginInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createUI];
}

/**
 搭建界面
 */
-(void)createUI {
    UIScrollView *backScrollView = [UITool createScrollViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT - HS_TabbarSafeBottomMargin) showsHorizontalScrollIndicator:NO showsVerticalScrollIndicator:NO bounces:NO delegate:nil];
    if (iOS11) {
        backScrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    } else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    backScrollView.contentSize = CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - HS_TabbarSafeBottomMargin);
    [self.view addSubview:backScrollView];
    
    UIImageView *topBackImageView = [UITool createImageViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 200) image:@"topBag"];
    [backScrollView addSubview:topBackImageView];
    
    UILabel *titleLabel = [UITool createLabelWithFrame:CGRectMake(0, 20, 100, 100) title:@"" font:18 textColor:[UIColor getWhiteColor] text:@"登录" backGroundColor:[UIColor clearColor]];
    titleLabel.centerX = self.view.centerX;
    [topBackImageView addSubview:titleLabel];
    
    UIImageView *phoneImageView = [UITool createImageViewWithFrame:CGRectMake(20, topBackImageView.bottom + 34, SCREEN_WIDTH - 40,58) image:@"loginInput"];
    [backScrollView addSubview:phoneImageView];
    
    UIImageView *inputImageView = [UITool createImageViewWithFrame:CGRectMake(30, 0, 10, 10) image:@"input_icon"];
    [inputImageView sizeToFit];
    inputImageView.top = (phoneImageView.height - inputImageView.height) / 2;
    [phoneImageView addSubview:inputImageView];

    UITextField *phoneTextField = [UITool createTextFieldWithFrame:CGRectMake(inputImageView.right + 32, phoneImageView.top + 5, phoneImageView.width - 120, 48) keyBoardType:UIKeyboardTypeDefault plaseHolder:@"请输入账号"];
    [backScrollView addSubview:phoneTextField];
    
    
    UIImageView *secretImageView = [UITool createImageViewWithFrame:CGRectMake(20, phoneImageView.bottom + 7, phoneImageView.width,phoneImageView.height) image:@"loginInput"];
    [backScrollView addSubview:secretImageView];
    
    UIImageView *lockImageView = [UITool createImageViewWithFrame:CGRectMake(30, 0, 10, 10) image:@"lock_icon"];
    [lockImageView sizeToFit];
    lockImageView.top = (secretImageView.height - lockImageView.height) / 2;
    [secretImageView addSubview:lockImageView];
    
    UITextField *secretTextField = [UITool createTextFieldWithFrame:CGRectMake(inputImageView.right + 32, secretImageView.top + 5, secretImageView.width - 120, 48) keyBoardType:UIKeyboardTypeDefault plaseHolder:@"请输入密码"];
    [backScrollView addSubview:secretTextField];
    
    UIButton *tapButton = [UITool createButtonWithFrame:CGRectMake(0, 0, 0, 0) buttonType:UIButtonTypeCustom defaultImage:@"secret_hide" title:nil titleColor:nil];
    [tapButton sizeToFit];
    tapButton.centerY = lockImageView.centerY;
    tapButton.right = secretImageView.width - 25;
    [secretImageView addSubview:tapButton];
    
//    UIButton *forgetButton = [UITool createButtonWithFrame:CGRectZero buttonType:UIButtonTypeSystem defaultImage:nil title:@"" titleColor:<#(UIColor *)#>]
}

//-(void)buttonClick {
//    NSDictionary *paramDict = @{
//                                @"phoneNum":@"15701201908",
//                                @"passWord":@"123456abcd",
//                                };
//    [NetWorkManager postWithUrl:Register_Address param:paramDict success:^(id callBackData) {
//        NSLog(@"%@",[callBackData objectForKey:@"msg"]);
//    } fail:^(id error) {
//        NSLog(@"%@",error);
//    }];
//}

@end

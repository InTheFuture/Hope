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
    UITextField *phoneTextField = [UITool createTextFieldWithFrame:CGRectMake(20, 100, 300, 30) keyBoardType:UIKeyboardTypeNumbersAndPunctuation plaseHolder:@"请输入手机号"];
    phoneTextField.backgroundColor = [UIColor grayColor];
    [self.view addSubview:phoneTextField];
    
    UITextField *secretTextField = [UITool createTextFieldWithFrame:CGRectMake(20, 200, 300, 30) keyBoardType:UIKeyboardTypeDefault plaseHolder:@"请输入密码"];
    secretTextField.backgroundColor = [UIColor grayColor];
    [self.view addSubview:secretTextField];
    
    UIButton *sureButton = [UITool createButtonWithFrame:CGRectMake(100, 300, 300, 30) buttonType:UIButtonTypeCustom defaultImage:nil title:@"确定" titleColor:[UIColor blueColor]];
    [sureButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sureButton];
    
}

-(void)buttonClick {
    NSDictionary *paramDict = @{
                                @"phoneNum":@"15701201908",
                                @"passWord":@"123456abcd",
                                };
    [NetWorkManager postWithUrl:Register_Address param:paramDict success:^(id callBackData) {
        NSLog(@"%@",[callBackData objectForKey:@"msg"]);
    } fail:^(id error) {
        NSLog(@"%@",error);
    }];
}

@end

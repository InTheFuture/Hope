//
//  HomeViewController.m
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#import "HomeViewController.h"

@implementation HomeViewController

-(void)viewDidLoad {
    //隐藏导航栏
    self.navigationController.navigationBar.hidden = YES;
    [self createUI];
}

-(void)createUI {
    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 100)];
    topView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:topView];
}

@end

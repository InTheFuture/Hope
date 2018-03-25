//
//  BaseNavigtionController.m
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#import "BaseNavigtionController.h"

#define QWNavigationBarTitleFont [UIFont systemFontOfSize:18]
#define QWNavigationBarButtonFont [UIFont systemFontOfSize:14]

@interface BaseNavigtionController ()

@end

@implementation BaseNavigtionController


//一初始化该类，就会调用该方法 近类第一次实例化时调用
+ (void)initialize
{
    //1.获取当前类下全局的UIBarButtonItem, 这里的self指[SCNavigationController class]
    UIBarButtonItem *allNavigationItem = [UIBarButtonItem appearance];
    //设置按钮标题颜色、字体
    NSMutableDictionary *textAttributeForButton = [NSMutableDictionary dictionary];
    textAttributeForButton[NSForegroundColorAttributeName] = [UIColor grayColor];
    textAttributeForButton[NSFontAttributeName] = QWNavigationBarButtonFont;
    
    [allNavigationItem setTitleTextAttributes:textAttributeForButton forState:UIControlStateNormal];
    
    //2.获取当前类下全局的NavigationBar, 这里的self指[UINavigationController class]
    UINavigationBar *allNavigationBar = [UINavigationBar appearance];
    //设置标题字体
    NSMutableDictionary *textAttributeForTitle = [NSMutableDictionary dictionary];
    textAttributeForTitle[NSFontAttributeName] = QWNavigationBarTitleFont;
    
    [allNavigationBar setTitleTextAttributes:textAttributeForTitle];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end

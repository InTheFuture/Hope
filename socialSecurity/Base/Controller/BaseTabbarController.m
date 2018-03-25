//
//  BaseTabbarController.m
//  socialSecurity
//
//  Created by Huan Liu on 2018/3/25.
//  Copyright © 2018年 Huan Liu. All rights reserved.
//

#import "BaseTabbarController.h"
#import "BaseNavigtionController.h"
#import "HomeViewController.h"
#import "CustomerServiceViewController.h"
#import "NewsViewController.h"
#import "ToolViewController.h"
#import "MineViewController.h"

@interface BaseTabbarController ()

@end

@implementation BaseTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 设置子控制器
    [self addChildViewControllers];
}

#pragma mark - 添加多个子控制器
- (void)addChildViewControllers {
    // 首页
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    [self addOneChildViewController:homeVC
                        normalImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                       pressedImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                 navigationBarTitle:@"首页"];
    
    // 客服
    CustomerServiceViewController *categoryVC = [[CustomerServiceViewController alloc] init];
    
    [self addOneChildViewController:categoryVC
                        normalImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                       pressedImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                 navigationBarTitle:@"客服"];
    
    
    // 资讯
    NewsViewController *discoverVC = [[NewsViewController alloc] init];
    
    [self addOneChildViewController:discoverVC
                        normalImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                       pressedImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                 navigationBarTitle:@"资讯"];
    
    // 工具
    ToolViewController *cartVC = [[ToolViewController alloc] init];
    
    [self addOneChildViewController:cartVC
                        normalImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                       pressedImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                 navigationBarTitle:@"工具"];
    
    // 我
    MineViewController *MyVC = [[MineViewController alloc] init];
    
    [self addOneChildViewController:MyVC
                        normalImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                       pressedImage:[UIImage originalImageNamed:@"tabBar_home_press"]
                 navigationBarTitle:@"我"];
    
}

#pragma mark - 添加1个子控制器
- (void)addOneChildViewController:(UIViewController *)viewController
                      normalImage:(UIImage *)normalImage
                     pressedImage:(UIImage *)pressedImage
               navigationBarTitle:(NSString *)title{
    // 设置子控制器导航条标题
    viewController.navigationItem.title = title;
    // 设置标签图片
    viewController.tabBarItem.image = normalImage;
    viewController.tabBarItem.selectedImage = pressedImage;
    // 添加子控制器至导航控制器
    BaseNavigtionController *navigationVC
    = [[BaseNavigtionController alloc] initWithRootViewController:viewController];
    // 添加导航控制器
    [self addChildViewController:navigationVC];
    
}
@end

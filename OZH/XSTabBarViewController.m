//
//  SXTabBarViewController.m
//  OZH
//
//  Created by 李兴东 on 2018/4/7.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSTabBarViewController.h"
#import "XSBaseViewController.h"

@interface XSTabBarViewController ()

@end

@implementation XSTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpSubviews];
}

- (void)setUpSubviews{
    
    
    XSBaseViewController *cv1 = [[XSBaseViewController alloc] init];
    cv1.title = @"首页";
    cv1.tabBarItem.title = @"首页";
    cv1.tabBarItem.image = [UIImage imageNamed:@"tabbar_feed_normal"];
    cv1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_feed_highlight"];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:cv1];

    XSBaseViewController *cv2 = [[XSBaseViewController alloc] init];
    cv2.title = @"消息";
    cv2.tabBarItem.title = @"消息";
    cv2.tabBarItem.image = [UIImage imageNamed:@"tabbar_notification_normal"];
    cv2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_notification_highlight"];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:cv2];
    
    XSBaseViewController *cv3 = [[XSBaseViewController alloc] init];
    cv3.title = @"我的";
    cv3.tabBarItem.title = @"我的";
    cv3.tabBarItem.image = [UIImage imageNamed:@"tabbar_mine_normal"];
    
//    修改选中item颜色
    UIImage *selectedImage = [[UIImage imageNamed:@"tabbar_mine_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    cv3.tabBarItem.selectedImage = selectedImage;
    [cv3.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:cv3];
    
    [self setViewControllers:@[nav1, nav2, nav3]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

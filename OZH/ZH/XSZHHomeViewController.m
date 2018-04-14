//
//  XSZHHomeViewController.m
//  OZH
//
//  Created by 李兴东 on 2018/4/14.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSZHHomeViewController.h"
#import "XSClientManager.h"

@interface XSZHHomeViewController ()

@end

@implementation XSZHHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[XSClientManager sharedInstance] getTopstory:10];
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

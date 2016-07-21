//
//  SettingViewController.m
//  WXTabBarController
//
//  Created by wangguigui on 16/7/21.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "SettingViewController.h"
#import "UIViewController+Navigation.h"
#import "AppDelegate.h"
#import "DetailViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addRightNavigationBarWithTitle:@"详情"];

    // Do any additional setup after loading the view.
}

-(void)rightNavigationBarClick
{
    DetailViewController * detailVC = [[DetailViewController alloc]init];
    detailVC.title = @"详情";
    detailVC.hidesBottomBarWhenPushed = YES;
    detailVC.view.backgroundColor = [UIColor brownColor];
    AppDelegate * appDelegate = [UIApplication sharedApplication].delegate;
    
    [appDelegate.navigationController pushViewController:detailVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  HomeViewController.m
//  WXTabBarController
//
//  Created by wangguigui on 16/7/21.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "HomeViewController.h"
#import "UIViewController+Navigation.h"
#import "AppDelegate.h"
#import "DetailViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addLeftNavigationBarWithTitle:@"抽屉"];
    [self addRightNavigationBarWithTitle:@"详情"];
    
    // Do any additional setup after loading the view.
}

#pragma mark - 弹出抽屉
-(void)leftNavigationBarClick
{
    AppDelegate * appDelegate = [UIApplication sharedApplication].delegate;
    [appDelegate.drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
    }];
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

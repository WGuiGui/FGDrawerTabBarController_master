//
//  UIViewController+Navigation.m
//  WXTabBarController
//
//  Created by wangguigui on 16/7/21.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import "UIViewController+Navigation.h"

@implementation UIViewController (Navigation)

-(void)addLeftNavigationBarWithTitle:(NSString *)leftTitle
{
    UIButton * leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setTitle:leftTitle forState:UIControlStateNormal];
    [leftButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    leftButton.frame = CGRectMake(0, 0, 60, 24);
    [leftButton sizeToFit];
    [leftButton addTarget:self action:@selector(leftNavigationBarClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftButton];
}

-(void)leftNavigationBarClick
{}

-(void)addRightNavigationBarWithTitle:(NSString *)rightTitle
{
    UIButton * rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightButton setTitle:rightTitle forState:UIControlStateNormal];
    [rightButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    rightButton.frame = CGRectMake(0, 0, 60, 24);
    [rightButton sizeToFit];
    [rightButton addTarget:self action:@selector(rightNavigationBarClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
}

-(void)rightNavigationBarClick
{}

@end

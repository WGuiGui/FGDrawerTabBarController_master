//
//  UIViewController+Navigation.h
//  WXTabBarController
//
//  Created by wangguigui on 16/7/21.
//  Copyright © 2016年 leichunfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Navigation)

-(void)addLeftNavigationBarWithTitle:(NSString *)leftTitle;
-(void)leftNavigationBarClick;

-(void)addRightNavigationBarWithTitle:(NSString *)rightTitle;
-(void)rightNavigationBarClick;

@end

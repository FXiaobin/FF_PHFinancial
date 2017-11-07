//
//  UIViewController+NavigationBarHidden.m
//  PHFinancial
//
//  Created by fanxiaobin on 2017/11/7.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "UIViewController+NavigationBarHidden.h"

@implementation UIViewController (NavigationBarHidden)

- (void)hiddenNavigationBar{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)showNavigationBar{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

-(void)pushViewController:(UIViewController *)viewController{
    viewController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:viewController animated:YES];
}

@end

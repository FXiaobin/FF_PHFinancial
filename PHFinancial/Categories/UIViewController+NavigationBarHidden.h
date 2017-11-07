//
//  UIViewController+NavigationBarHidden.h
//  PHFinancial
//
//  Created by fanxiaobin on 2017/11/7.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (NavigationBarHidden)

- (void)hiddenNavigationBar;

- (void)showNavigationBar;

-(void)pushViewController:(UIViewController *)viewController;

@end

//
//  UITabBarController+Init.m
//  FF_CustomBarAppearence
//
//  Created by fanxiaobin on 2017/9/27.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "UITabBarController+Init.h"
//#import "BaseNavigationController.h"

@implementation UITabBarController (Init)

-(void)customNavigationBarAppearence{
   
    [UINavigationBar appearance].barTintColor = kMainColor;
    [UINavigationBar appearance].tintColor = [UIColor whiteColor];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:18], NSForegroundColorAttributeName : [UIColor whiteColor]}];
    [UINavigationBar appearance].translucent = NO;
    [UINavigationBar appearance].shadowImage = [UIImage new];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [UINavigationBar appearance].backIndicatorImage = [UIImage imageNamed:@"back"];
    [UINavigationBar appearance].backIndicatorTransitionMaskImage = [UIImage imageNamed:@"back"];
    
   //去除顶部的分割线
   //[[UITabBar appearance] setShadowImage:[UIImage new]];
   //[[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    ///TabBar显示设置
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor grayColor]} forState:UIControlStateNormal];
    UIColor *titleHighlightedColor = kMainColor;
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : titleHighlightedColor} forState:UIControlStateSelected];
   
}

- (UINavigationController *)setupViewController:(NSString *)viewControllerClassName title:(NSString *)title image:(NSString *)imageName selectedImage:(NSString *)selImageName{
    
    Class cls = NSClassFromString(viewControllerClassName);
    UIViewController *vc = [[cls alloc] init];
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    UIImage *normalImage = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selImage = [[UIImage imageNamed:selImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:title image:normalImage selectedImage:selImage];
    item.titlePositionAdjustment = UIOffsetMake(0, -3);
    nc.tabBarItem = item;
    
    return nc;
}

-(void)setupTabBarControllerWithViewControllerNames:(NSArray *)viewControllerNames titles:(NSArray *)titles normalImages:(NSArray *)normalImages selectedImages:(NSArray *)selectedImages{
    
//    ///TabBar显示设置
//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor grayColor]} forState:UIControlStateNormal];
//    UIColor *titleHighlightedColor = kMainColor;
//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : titleHighlightedColor} forState:UIControlStateSelected];
    
    NSMutableArray *viewControllers = [NSMutableArray array];
    for (int i = 0; i < viewControllerNames.count; i++) {
        NSString *viewControllerClassName = viewControllerNames[i];
        UINavigationController *nc = [self setupViewController:viewControllerClassName title:titles[i] image:normalImages[i] selectedImage:selectedImages[i]];
        [viewControllers addObject:nc];
    }
    self.viewControllers = viewControllers;
    
}

@end

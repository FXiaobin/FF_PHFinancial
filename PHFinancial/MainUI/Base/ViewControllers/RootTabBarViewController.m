//
//  RootTabBarViewController.m
//  FF_CustomBarAppearence
//
//  Created by fanxiaobin on 2017/9/27.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "RootTabBarViewController.h"
#import "UITabBarController+Init.h"

@interface RootTabBarViewController ()

@end

@implementation RootTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self customNavigationBarAppearence];
    
    NSArray *titles = @[@"首页",@"产品",@"发现",@"我的"];
    NSArray *imageArr = @[@"tabBar_home",@"tabBar_product",@"tabBar_discovery",@"tabBar_my"];
    NSArray *selectImageArr = @[@"tabBar_home_selected",@"tabBar_product_selected",@"tabBar_discovery_selected",@"tabBar_my_selected"];
    NSArray *viewControllerNames = @[@"HomeViewController",@"ProductViewController",@"DiscoveryViewController",@"MyViewController"];
    
    [self setupTabBarControllerWithViewControllerNames:viewControllerNames titles:titles normalImages:imageArr selectedImages:selectImageArr];
    
    
    
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

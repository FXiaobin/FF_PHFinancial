//
//  CFLoadingHUD.m
//  CaiFuMap
//
//  Created by fanxiaobin on 2017/8/9.
//  Copyright © 2017年 wanghongwei. All rights reserved.
//

#import "CFLoadingHUD.h"

#define ShowCFLoading       [[CFLoadingHUD shareInstance] showLoading];
#define HiddenCFLoading     [[CFLoadingHUD shareInstance] hiddenLoading];

@implementation CFLoadingHUD


+ (CFLoadingHUD *)shareInstance{
    static CFLoadingHUD *hud = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        hud = [[CFLoadingHUD alloc] init];
    });
    return hud;
}

-(CFLoading *)loading{
    if (_loading == nil) {
        _loading = [[CFLoading alloc] initWithFrame:CGRectMake((kScreenWidth - kSCALE(216))/2.0, (kScreenHeight - kSCALE(216))/2.0, kSCALE(216), kSCALE(216))];
    }
    return _loading;
}

-(UIWindow *)currentWindow{
    UIWindow *widnow = [UIApplication sharedApplication].keyWindow;
    if (widnow == nil) {
        widnow = [UIApplication sharedApplication].windows.firstObject;
    }
    [widnow addSubview:self.mask];
    return widnow;
}

-(UIView *)mask{
    if (_mask == nil) {
        _mask = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _mask.alpha = 0.5;
        _mask.backgroundColor = [UIColor blackColor];
    }
    return _mask;
}

- (void)showLoading{
    
    UIWindow *window = [self currentWindow];
    [self.loading startAnimating];
    [window addSubview:self.loading];
    
}

- (void)hiddenLoading{
    
    [self.loading stopAnimating];
    [self.loading removeFromSuperview];
    [self.mask removeFromSuperview];
}

@end

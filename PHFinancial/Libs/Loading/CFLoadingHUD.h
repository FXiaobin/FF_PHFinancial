//
//  CFLoadingHUD.h
//  CaiFuMap
//
//  Created by fanxiaobin on 2017/8/9.
//  Copyright © 2017年 wanghongwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFLoading.h"

@interface CFLoadingHUD : NSObject

+ (CFLoadingHUD *)shareInstance;
- (void)showLoading;
- (void)hiddenLoading;

@property  (nonatomic,strong) CFLoading *loading;
@property  (nonatomic,strong) UIView *mask;

@end

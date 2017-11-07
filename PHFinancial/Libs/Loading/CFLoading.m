//
//  CFLoading.m
//  CaiFuMap
//
//  Created by fanxiaobin on 2017/8/9.
//  Copyright © 2017年 wanghongwei. All rights reserved.
//

#import "CFLoading.h"

@implementation CFLoading

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        NSMutableArray *images = [NSMutableArray array];
        for (int i = 0; i < 150; i++) {
            NSString *imageName = [NSString stringWithFormat:@"0_%05d",i];
            UIImage *image = [UIImage imageNamed:imageName];
            [images addObject:image];
        }
        self.animationImages = images;
        self.animationDuration = 1.0;
        self.animationRepeatCount = CGFLOAT_MAX;
        [self startAnimating];
    }
    return self;
}

@end

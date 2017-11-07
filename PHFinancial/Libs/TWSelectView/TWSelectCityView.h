//
//  TWSelectCityView.h
//  TWCitySelectView
//
//  Created by TreeWriteMac on 16/6/30.
//  Copyright © 2016年 Raykin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CityModel;

@interface TWSelectCityView : UIView

-(instancetype)initWithTWFrame:(CGRect)rect TWselectCityTitle:(NSString*)title;

/**
 *  显示
 */
-(void)showCityView:(void(^)(CityModel *proviceModel,CityModel *cityModel,CityModel *distrModel))selectStr;


@end

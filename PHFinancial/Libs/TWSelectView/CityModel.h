//
//  CityModel.h
//  WealthCloud
//
//  Created by fanxiaobin on 2017/4/25.
//  Copyright © 2017年 caifumap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CityModel : NSObject<NSCoding>

@property  (nonatomic,strong) NSString *city;
@property  (nonatomic,strong) NSString *code;
@property  (nonatomic,strong) NSString *district;
@property  (nonatomic,strong) NSNumber *cid;
@property (nonatomic,strong) NSString *province;
@property (nonatomic,strong) NSNumber *parent;
@property  (nonatomic,strong) NSArray *list;
@property  (nonatomic,strong) NSNumber *startPos;

+ (CityModel *)makeModelWithDic:(NSDictionary *)dic;

-(instancetype)initWithCoder:(NSCoder *)aDecoder;
-(void)encodeWithCoder:(NSCoder *)aCoder;

@end

//
//  CityModel.m
//  WealthCloud
//
//  Created by fanxiaobin on 2017/4/25.
//  Copyright © 2017年 caifumap. All rights reserved.
//

#import "CityModel.h"

@implementation CityModel

+ (CityModel *)makeModelWithDic:(NSDictionary *)dic{
    CityModel *model = [[CityModel alloc] init];
    model.city = dic[@"city"];
    model.code = dic[@"code"];
    model.district = dic[@"district"];
    model.cid = dic[@"id"];
    model.province = dic[@"province"];
    model.parent = dic[@"parent"];
    model.list = dic[@"list"];
    model.startPos = dic[@"startPos"];
    
    return model;
}

//解档
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self) {
        self.city = [aDecoder decodeObjectForKey:@"city"];
        self.code = [aDecoder decodeObjectForKey:@"code"];
        self.district = [aDecoder decodeObjectForKey:@"district"];
        self.cid = [aDecoder decodeObjectForKey:@"cid"];
        self.province = [aDecoder decodeObjectForKey:@"province"];
        self.parent = [aDecoder decodeObjectForKey:@"parent"];
        self.list = [aDecoder decodeObjectForKey:@"list"];
      
    }
    return self;
}
// 把对象归档进沙盒中
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.city forKey:@"city"];
    [aCoder encodeObject:self.code forKey:@"code"];
    [aCoder encodeObject:self.district forKey:@"district"];
    [aCoder encodeObject:self.cid forKey:@"cid"];
    [aCoder encodeObject:self.province forKey:@"province"];
    [aCoder encodeObject:self.parent forKey:@"parent"];
    [aCoder encodeObject:self.list forKey:@"list"];
   
}


@end

//
//  NetWorkRequest.h
//  PHFinancial
//
//  Created by fanxiaobin on 2017/11/7.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

@interface NetWorkRequest : NSObject

///网络状态监测
+ (void)networkReachabilityStatusMonitoring;

+ (void)POST:(NSString *)urlString parameters:(NSDictionary *)parameters success:(void (^)(id responseObject))success failure:(void (^) (NSError *error))failure;

+ (void)GET:(NSString *)urlString parameters:(NSDictionary *)parameters success:(void (^)(id responseObject))success failure:(void (^) (NSError *error))failure;

+ (void)uploadImages:(NSArray *)images url:(NSString *)urlString parameters:(NSDictionary *)parameters success:(void (^)(id responseObject))success failure:(void (^) (NSError *error))failure;

@end

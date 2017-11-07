//
//  NetWorkRequest.m
//  PHFinancial
//
//  Created by fanxiaobin on 2017/11/7.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "NetWorkRequest.h"

@implementation NetWorkRequest


///网络状态监测
+ (void)networkReachabilityStatusMonitoring{
    
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown: {
                DDLog(@"---- 未知网络 ---");
            } break;
            case AFNetworkReachabilityStatusNotReachable: {
                DDLog(@"---- 无网络 ---");
            } break;
            case AFNetworkReachabilityStatusReachableViaWiFi: {
                DDLog(@"---- WiFi网络 ---");
            } break;
            case AFNetworkReachabilityStatusReachableViaWWAN: {
                DDLog(@"---- 移动网络 ---");
            } break;
                
            default:
                break;
        }
    }];
}

+ (AFHTTPSessionManager *)initSessionManager{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager] ;
    [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    manager.requestSerializer.timeoutInterval = 15.f;
    [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    
    NSSet *set = [NSSet setWithObjects:@"text/plain",@"text/html",@"application/json",
                  @"application/json;charset=UTF-8", @"application/x-www-form-urlencoded", nil];
    manager.responseSerializer.acceptableContentTypes = set;
    
    return manager;
}

+ (void)POST:(NSString *)urlString parameters:(NSDictionary *)parameters success:(void (^)(id responseObject))success failure:(void (^) (NSError *error))failure{
    
    AFHTTPSessionManager *manager = [self initSessionManager];
    
    [manager POST:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

+ (void)GET:(NSString *)urlString parameters:(NSDictionary *)parameters success:(void (^)(id responseObject))success failure:(void (^) (NSError *error))failure{
    
    AFHTTPSessionManager *manager = [self initSessionManager];
    
    [manager GET:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

+ (void)uploadImages:(NSArray *)images url:(NSString *)urlString parameters:(NSDictionary *)parameters success:(void (^)(id responseObject))success failure:(void (^) (NSError *error))failure{
    
    AFHTTPSessionManager *manager = [self initSessionManager];
    
    [manager POST:urlString parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
        for (int i = 0; i < images.count; i++) {
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            formatter.dateFormat = @"yyyyMMddHHmmss";
            NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *fileName = [NSString stringWithFormat:@"%@.jpg", str];
            
            [formData appendPartWithFileData:UIImageJPEGRepresentation(images[i],0.5) name:@"image" fileName:fileName mimeType:@"image/jpeg"];
        }
        
    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        DDLog(@"%@", error.localizedDescription);
        failure(error);
    }];
    
}

@end

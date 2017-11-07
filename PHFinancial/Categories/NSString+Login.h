//
//  NSString+Login.h
//  PHFinancial
//
//  Created by fanxiaobin on 2017/11/7.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Login)

- (BOOL)isUrl;
- (BOOL)isTelephone;
- (BOOL)isSixNumber;
- (BOOL)isFourNumber;
- (BOOL)isUserName;
- (BOOL)isMobilePhone;
-(BOOL)isCode;
- (BOOL)isPassword;
///是否是最多两位小数
- (BOOL)isTwoFloat;

@end

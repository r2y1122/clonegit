//
//  HttpsManager.h
//  testAf
//
//  Created by HuRay on 16/6/25.
//  Copyright © 2016年 HuRay. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "AFNetworking.h"


#define kTimeOutInterval 30 // 请求超时的时间
typedef void (^SuccessBlock)(NSDictionary *dict, BOOL success); // 访问成功block
typedef void (^AFNErrorBlock)(NSError *error); // 访问失败block

@interface HttpsManager : NSObject

#pragma mark - 创建请求者
+(AFHTTPSessionManager *)manager;
+ (void)getUserCarShopAndSalesDataForSalesWithUserId:(NSString *)userId date:(NSString *)date selectAreaType:(NSString *)areaType Success:(SuccessBlock)success fail:(AFNErrorBlock)fail;
+ (void)loginWithUserAccount:(NSString *)account password:(NSString *)password success:(SuccessBlock)success fail:(AFNErrorBlock)fail;
- (void)downLoadWithUrlString:(NSString *)urlString;
- (void)uploadWithUser:(NSString *)userId UrlString:(NSString *)urlString upImg:(UIImage *)upImg;
- (void)AFNetworkStatus;

@end

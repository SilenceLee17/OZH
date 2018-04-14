//
//  XSClientManager.m
//  OZH
//
//  Created by 李兴东 on 2018/4/9.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSClientManager.h"
#import <AFNetworking/AFNetworking.h>

static id sharedInstance;

@interface XSClientManager ()

@property (nonatomic, strong) AFHTTPSessionManager *httpManager;

@end

@implementation XSClientManager

#pragma mark - LifeCycle

+ (instancetype)sharedInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [super allocWithZone:zone];
    });
    return sharedInstance;
}

- (instancetype)copyWithZone:(NSZone *)zone
{
    return sharedInstance;
}

- (instancetype)mutableCopyWithZone:(NSZone *)zone
{
    return sharedInstance;
}

#pragma mark - Public

- (void)setUpBaseUrl:(NSURL *)baseUrl
{
    self.httpManager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseUrl];
}

- (void)setHeaderWithField:(NSString *)field andValue:(NSString *)value
{
    if (field && value) {
        [self.httpManager.requestSerializer setValue:value forHTTPHeaderField:field];
    }
}

- (void)getTopstory:(NSInteger)count
{
    NSDictionary *parameters = @{
                                 @"limit":@(count),
                                 @"reverse_order":@(0)
                                 };
    [self.httpManager GET:@"/topstory/hot-list" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

#pragma mark - Private

@end

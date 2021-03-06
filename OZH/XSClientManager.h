//
//  XSClientManager.h
//  OZH
//
//  Created by 李兴东 on 2018/4/9.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XSZHTopStory.h"

@interface XSClientManager : NSObject

+ (instancetype)sharedInstance;
- (void)setUpBaseUrl:(NSURL *)baseUrl;
- (void)setHeaderWithField:(NSString *)field andValue:(NSString *)value;

- (void)getTopstory:(NSInteger)count
            success:(void(^)(XSZHTopStory *topStory))success
            failure:(void(^)(NSError *error))failure;


@end

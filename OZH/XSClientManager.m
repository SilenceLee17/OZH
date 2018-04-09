//
//  XSClientManager.m
//  OZH
//
//  Created by 李兴东 on 2018/4/9.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSClientManager.h"

static id sharedInstance;

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

@end

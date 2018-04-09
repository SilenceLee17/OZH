//
//  XSClientManager.h
//  OZH
//
//  Created by 李兴东 on 2018/4/9.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSClientManager : NSObject

@property (nonatomic, copy)NSString *testString;

+ (instancetype)sharedInstance;
+ (instancetype)allocWithZone:(struct _NSZone *)zone;

@end

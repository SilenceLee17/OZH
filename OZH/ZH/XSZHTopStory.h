//
//  XSZHQuestion.h
//  OZH
//
//  Created by 李兴东 on 2018/4/14.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XSZHQuestion;
@class XSZHPage;
@class XSZHQuestionChildren;
@class XSZHAnswer;
@class XSZHAuthor;

@interface XSZHTopStory : NSObject

@property (nonatomic, copy) NSString *freshText;
@property (nonatomic, copy) NSArray <XSZHQuestion *>*questions;
@property (nonatomic, copy) NSString *sessionToken;
@property (nonatomic, strong) XSZHPage *page;

@end

@interface XSZHPage : NSObject

@property (nonatomic, assign) BOOL isEnd;
@property (nonatomic, copy) NSString *previous;
@property (nonatomic, copy) NSString *next;

@end

@interface XSZHQuestion : NSObject

@property (nonatomic, strong) XSZHAnswer *answer;
@property (nonatomic, copy) NSString *attachedInfo;
@property (nonatomic, copy) NSArray <XSZHQuestionChildren *>*children;
@property (nonatomic, assign) BOOL debut;
@property (nonatomic, copy) NSString *detailText;
@property (nonatomic, copy) NSString *questionId;
@property (nonatomic, assign) NSInteger trend;
@property (nonatomic, copy) NSString *type;

@end

@interface XSZHQuestionChildren : NSObject

@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *thumbnail;

@end

@interface XSZHAnswer : NSObject

@property (nonatomic, assign) NSInteger answerId;
@property (nonatomic, assign) NSInteger commentCount;
@property (nonatomic, assign) NSInteger answerCount;
@property (nonatomic, copy) NSString *excerpt;
@property (nonatomic, strong) XSZHAuthor *author;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, assign) BOOL is_following;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSArray <NSNumber *>*boundTopicIds;
@property (nonatomic, assign) NSUInteger created;
@property (nonatomic, assign) NSInteger followerCount;

@end

@interface XSZHAuthor : NSObject

@property (nonatomic, copy) NSString *gender;
@property (nonatomic, copy) NSString *authorId;
@property (nonatomic, copy) NSString *headline;
@property (nonatomic, copy) NSString *avatarUrl;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, assign) BOOL isFollowing;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSArray *badge;
@property (nonatomic, assign) BOOL isOrg;
@property (nonatomic, assign) BOOL isFollowed;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *userType;

@end



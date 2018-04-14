//
//  XSZHQuestion.m
//  OZH
//
//  Created by 李兴东 on 2018/4/14.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSZHTopStory.h"

@implementation XSZHTopStory

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"freshText" : @"fresh_text",
             @"sessionToken" : @"session_token",
             @"questions" : @"data",
             @"page" : @"paging"
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"questions" : [XSZHQuestion class]
             };
}

@end

@implementation XSZHPage

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"isEnd" : @"is_end"
             };
}

@end


@implementation XSZHQuestion

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"attachedInfo" : @"attached_info",
             @"questionId" : @"id",
             @"detailText" : @"detail_text",
             @"answer" : @"target"
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"children" : [XSZHQuestionChildren class]
             };
}
@end

@implementation XSZHQuestionChildren
@end

@implementation XSZHAnswer

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"answerId" : @"id",
             @"commentCount" : @"comment_count",
             @"answerCount" : @"answer_count",
             @"isFollowing" : @"is_following",
             @"boundTopicIds" : @"bound_topic_ids",
             @"followerCount" : @"follower_count",

             };
}

@end

@implementation XSZHAuthor

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"authorId" : @"id",
             @"avatarUrl" : @"avatar_url",
             @"isFollowing" : @"is_following",
             @"isOrg" : @"is_org",
             @"isFollowed" : @"is_followed",
             @"userType" : @"user_type",
             
             };
}

@end


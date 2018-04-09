//
//  XSClientManagerTests.m
//  OZHTests
//
//  Created by 李兴东 on 2018/4/9.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "XSClientManager.h"

@interface XSClientManagerTests : XCTestCase

@end

@implementation XSClientManagerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSharedInstance{
//    验证单例一致性
    XSClientManager* obj1 = [XSClientManager sharedInstance] ;
    XSClientManager* obj2 = [XSClientManager allocWithZone:NULL] ;
    XSClientManager* obj3 = [[XSClientManager alloc] init] ;
    XSClientManager* obj4 = [[[XSClientManager alloc] init] copy];
    XSClientManager* obj5 = [[[XSClientManager alloc] init] mutableCopy];
    XCTAssertEqual(obj1, obj2);
    XCTAssertEqual(obj1, obj3);
    XCTAssertEqual(obj1, obj4);
    XCTAssertEqual(obj1, obj5);
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

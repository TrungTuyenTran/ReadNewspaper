//
//  ObjCExercise3Tests.m
//  ObjCExercise3Tests
//
//  Created by Tran Trung Tuyen on 10/21/16.
//  Copyright (c) 2016 Tran Trung Tuyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface ObjCExercise3Tests : XCTestCase

@end

@implementation ObjCExercise3Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

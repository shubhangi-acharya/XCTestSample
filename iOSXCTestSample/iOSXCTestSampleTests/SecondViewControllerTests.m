//
//  SecondViewControllerTests.m
//  iOSXCTestSample
//
//  Created by Suresh Varma on 15/07/15.
//  Copyright (c) 2015 Shubhangi Pandya. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SecondViewController.h"

@interface SecondViewControllerTests : XCTestCase

@property (nonatomic) SecondViewController *secondVC;

@end

@implementation SecondViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _secondVC = [SecondViewController new];
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

- (void)testSplitNumberString {
    NSString *originalString = @"abcd1234";
    NSInteger fetchedNumber = [self.secondVC splitNumberFromString:originalString];
    NSInteger expectedNumber = 1234;
    XCTAssertEqual(expectedNumber, fetchedNumber);
}

@end

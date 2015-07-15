//
//  ViewControllerTests.m
//  iOSXCTestSample
//
//  Created by Shubhangi Pandya on 15/07/15.
//  Copyright (c) 2015 Shubhangi Pandya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewControllerTests : XCTestCase
@property (nonatomic)ViewController *viewController;

@end

@implementation ViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.viewController = [[ViewController alloc] init];

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testReverseString {
    NSString *originalString = @"himynameisandy";
    NSString *reversedString = [self.viewController reverseString:originalString];
    NSString *expectedReversedString = @"ydnasiemanymih";
    
    XCTAssertEqualObjects(expectedReversedString, reversedString, @"The reversed string did not match the expected reverse");
}

@end

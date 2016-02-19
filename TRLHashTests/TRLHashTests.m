//
//  TRLHashTests.m
//  TRLHashTests
//
//  Created by Michael Yau on 2/19/16.
//  Copyright © 2016 NSIRLConnection. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TRLHash.h"

@interface TRLHashTests : XCTestCase

@end

@implementation TRLHashTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatItUnhashesTrelloOutputExample {
    XCTAssertEqualObjects([TRLHash stringWithUnsignedInteger:680131659347 expectedStringLength:7], @"leepadg");
}

- (void)testThatItHashesToTrelloInputExample {
    XCTAssertEqual([TRLHash unsignedIntegerFromString:@"leepadg"], 680131659347);
}

@end

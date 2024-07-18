//
//  CucumberSwiftSampleTests.swift
//  CucumberSwiftSampleTests
//
//  Created by tallalj
//

import XCTest
@testable import CucumberSwiftSample

class CucumberSwiftSampleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let expected = true
        let actual = true
        XCTAssertEqual(expected, actual, "Actual does not equal expected")
    }
    
    func testFailingExample(){
        let expected = true
        let actual = false
        XCTAssertEqual(expected, actual, "Actual does not equal expected")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

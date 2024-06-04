//
//  CucumberSwiftSampleUITests.swift
//  CucumberSwiftSampleUITests
//
//  Created by Tyler Thompson on 1/16/21.
//

import XCTest
import CucumberSwift

extension Cucumber: StepImplementation {
    public var bundle: Bundle {
        class Findme { }
        return Bundle(for: Findme.self) //This is just my shortcut way of identifying the test bundle, you do you. This bundle needs to contain the folder reference we added
    }

    public func setupSteps() {
        let app = XCUIApplication()
        BeforeScenario { (_) in
            app.launch()
        }
        Given(/^CucumberSwift is setup correctly$/) { _, _ in
            XCTAssert(true)
        }
        Then(/^Press the login button$/) { _, _ in
            XCTAssert(true)
        }
    }
}

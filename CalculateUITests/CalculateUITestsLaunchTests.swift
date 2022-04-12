//
//  CalculateUITestsLaunchTests.swift
//  CalculateUITests
//
//  Created by Shahid Latif on 12/04/2022.
//

import XCTest

class CalculateUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        app.buttons["9"].waitForExistence(timeout: 30)
        app.buttons["9"].tap()
        sleep(10)
    }
    
    override func tearDown() {
        let app = XCUIApplication()
        app.terminate()
        
    }
}

//
//  testeQuatro.swift
//  estudoNO1testesTestsUI
//
//  Created by Vini Oliveira  on 03/03/26.
//

import XCTest

final class testeQuatro: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        app.activate()
        let element = app/*@START_MENU_TOKEN@*/.buttons["first"]/*[[".otherElements.buttons[\"first\"]",".buttons[\"first\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch
        element.tap()
        
        let element2 = app/*@START_MENU_TOKEN@*/.buttons["second"]/*[[".otherElements.buttons[\"second\"]",".buttons[\"second\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch
        element2.tap()
        
        let element3 = app/*@START_MENU_TOKEN@*/.buttons["third"]/*[[".otherElements.buttons[\"third\"]",".buttons[\"third\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch
        element3.tap()
        element.tap()
        element2.tap()
        element3.tap()
        XCUIDevice.shared.press(.home)
     
        let springboardApp = XCUIApplication(bundleIdentifier: "com.apple.springboard")
        let element4 = springboardApp/*@START_MENU_TOKEN@*/.icons["estudoNO1testes"]/*[[".icons.icons[\"estudoNO1testes\"]",".icons[\"estudoNO1testes\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch
        element4.tap()
        XCUIDevice.shared.press(.home)

        element4.tap()
        
        app.activate()
        element.tap()
        element2.tap()
        element3.tap()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }
}

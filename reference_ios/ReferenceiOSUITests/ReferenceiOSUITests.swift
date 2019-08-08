//
//  ReferenceiOSUITests.swift
//  ReferenceiOSUITests
//
//  Created by Dunya Kirkali on 27/03/2019.
//  Copyright © 2019 ABN AMRO. All rights reserved.
//

import XCTest

class ReferenceiOSUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    //  validate that "Hello" text exists on Screen
    
    func testtextOnScreen() {
        let textOnScreen = app.staticTexts["Hello"]
        XCTAssert(textOnScreen.exists)
    }
    
    // validate that "Button" exists on Screen
    
    func testbuttonsOnScreen() {
        let buttonsOnScreen = app.buttons["Button"]
        XCTAssert(buttonsOnScreen.exists)
    }
    
    
    // Negative testcase that hello text doesnt exists once user tap on "Button"
    
    func testUIFlow() {
        let buttonsOnScreen = app.buttons["Button"]
        let textOnScreen = app.staticTexts["Hello"]
        buttonsOnScreen.tap()
        XCTAssertFalse(textOnScreen.exists)
    }
    
    // accessibility test for button using value of identifier
    
    func testWithButtonAccessibilityID() {
        
        XCTAssertTrue(app.windows.containing(.button, identifier: "ButtonOnScreen").element.exists)
        
    }
}







//
//  ZPTesting_ExampleUITests.swift
//  ZPTesting_ExampleUITests
//
//  Created by Zsolt Pete on 2019. 10. 14..
//  Copyright © 2019. CocoaPods. All rights reserved.
//

import XCTest
import ZPTesting

class ZPTesting_ExampleUITests: BaseXCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        self.tapElement(AccessibilityIds.Login.RegisterButton, type: .button)
        let emailField = self.letElement(AccessibilityIds.Registration.EmailInputField, type: .inputField)
        self.write(in: emailField, text: "petezetep@gmail.com")
        self.write(in: AccessibilityIds.Registration.PasswordInputField, type: .secureInputField, text: "asd")
        self.write(in: AccessibilityIds.Registration.ConfiemPasswordInputField, type: .secureInputField, text: "asd\n")
        self.tapElement(AccessibilityIds.Registration.RegisterButton, type: .button)
        
        let okButton = app.buttons["OK"]
        self.waitExistence(of: okButton, timeout: 5)
        okButton.tap()
    }
}

extension BaseXCTestCase {
    
    
    
}

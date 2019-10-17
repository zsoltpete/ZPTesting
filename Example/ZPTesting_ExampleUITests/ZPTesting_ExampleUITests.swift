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
    
    func testListScrolling() {
        self.tapElement(AccessibilityIds.Login.LoginButton, type: .button)
        //self.scroll(AccessibilityIds.List.ListTableView, type: .tables, direction: .up)
        let cell = self.letCell(at: 2, table: nil)
        self.tapElement(AccessibilityIds.List.ListItemButton, type: .button, parentElement: cell)
        self.tapElement(AccessibilityIds.List.ListItemTitle, type: .label, parentElement: cell)
    }
    
    func testGoBack() {
        self.tapElement(AccessibilityIds.Login.RegisterButton, type: .button)
        self.goBack()
    }
    
    func testExample() {
        self.tapElement(AccessibilityIds.Login.RegisterButton, type: .button)
        let emailField = self.letElement(AccessibilityIds.Registration.EmailInputField, type: .inputField)
        self.write(in: emailField, text: "petezetep@gmail.com")
        self.write(in: AccessibilityIds.Registration.PasswordInputField, type: .secureInputField, text: "asd")
        self.write(in: AccessibilityIds.Registration.ConfiemPasswordInputField, type: .secureInputField, text: "asd\n")
        self.tapElement(AccessibilityIds.Registration.RegisterButton, type: .button)
        
        let okButton = app.buttons["OK"]
        self.waitExistence(of: okButton, timeout: 1)
        okButton.tap()
    }
}

extension BaseXCTestCase {
    
}

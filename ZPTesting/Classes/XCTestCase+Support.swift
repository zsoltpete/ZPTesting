//
//  XCTestCase+Support.swift
//  Pods-ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 14..
//

import Foundation
import XCTest

extension BaseXCTestCase {
    
    func baseStartStep() {
        
    }
    
    func baseEndStep() {
        
    }
    
    /**
     Chech is element on the screen
     - parameter element: Element which will be checked
     - returns: Element whict checked
     */
    func isExists(_ element: XCUIElement) -> XCUIElement {
        if !element.exists {
                assertionFailure("Element not exist")
        }
        return element
    }
    
    /**
     ZPTesting: Wait for predicate success
     - parameter rawPredicate: Predicate which will be checked
     - parameter element: Element which will be checked
     - parameter timeout: Time which iis the max waiting time to predicate checking
     */
    open func wait(for rawPredicate: String, element: XCUIElement, timeout: Double) {
        let predicate = NSPredicate(format: rawPredicate)
        expectation(for: predicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: timeout, handler: nil)
    }
    
    /**
    ZPTesting: Wait for existence of element success
    - parameter element: Element which will be checked
    - parameter timeout: Time which iis the max waiting time to existence checking
    */
    open func waitExistence(of element: XCUIElement, timeout: Double) {
        let predicate = NSPredicate(format: "exists == 1")
        expectation(for: predicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: timeout, handler: nil)
    }
    
    /**
     ZPTesting: Pop navigation controller.
     */
    open func goBack() {
        app.navigationBars.buttons.element(boundBy: 0).tap()
    }
    
}

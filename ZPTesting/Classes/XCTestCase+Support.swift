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
    
}

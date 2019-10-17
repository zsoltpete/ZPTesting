//
//  BaseXCTestCase+Swipe.swift
//  Pods-ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 16..
//

import Foundation
import XCTest

extension BaseXCTestCase {
    
    /**
     Scroll specific element with a direction
     - parameter element: Element which will be scrolled
     - parameter direction: The direction which will be created on the element
     */
    open func scroll(_ element: XCUIElement, direction: SwipeDirection) {
        switch direction {
        case .left:
            element.swipeLeft()
        case .right:
            element.swipeRight()
        case .up:
            element.swipeUp()
        case .down:
            element.swipeDown()
        }
    }
    
    /**
    Scroll specific element with a direction
    - parameter elementId: Element id which will be scrolled
     - parameter type: The type of the element
    - parameter direction: The direction which will be created on the element
    */
    open func scroll(_ elementId: String, type: ElementType, direction: SwipeDirection) {
        let element = self.letElement(elementId, type: type)
        self.scroll(element, direction: direction)
    }
    
}

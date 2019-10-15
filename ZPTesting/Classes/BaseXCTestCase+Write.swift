//
//  BaseXCTestCase+Write.swift
//  Pods-ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 15..
//

import Foundation
import XCTest

extension BaseXCTestCase {
    
    /**
     ZPTesting: Write text in an input
     - parameter elementId: An input which will be typed
     - parameter type: Types of the element
     - parameter text: Text which will be typed
     */
    open func write(in elementId: String, type: ElementType, text: String) {
        let element = letElement(elementId, type: type)
        self.tapElementAndWaitForKeyboardToAppear(element: element)
        element.typeText(text)
    }
    
    /**
     ZPTesting: Write text in an input
     - parameter element: An input which will be typed
     - parameter text: Text which will be typed
     */
    open func write(in element: XCUIElement, text: String) {
        self.tapElementAndWaitForKeyboardToAppear(element: element)
        element.typeText(text)
    }
    
    /**
    ZPTesting: Tap on element and wait for keyboard appearance
     - parameter element: Element which will be tapped and write in it
     */
    open func tapElementAndWaitForKeyboardToAppear(element: XCUIElement) {
        let keyboard = XCUIApplication().keyboards.element
        while (true) {
            element.tap()
            if keyboard.exists {
                break;
            }
            RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.5))
        }
    }
    
    /**
     ZPTesting: Write with keyboard
     - parameter text: Text will be write with the keyboard
     */
    open func write(_ text: String) {
        for character in text {
            let isEmailSpecial = character.isEmailSpecial()
            let changeKeyboardWithABC = !character.isLetter && !isEmailSpecial
            let changeKeyboardWithShift = character.isLetter && character.isUppercase
            if changeKeyboardWithABC {
                pushButton("more")
            } else if changeKeyboardWithShift {
                self.pushShift()
            }
            
            let str = String(character)
            self.pushButton(str)
            if changeKeyboardWithABC {
                pushButton("more")
            }
        }
    }
    
    /**
     ZPTesting: Push keybaord's key with multiple time
     - parameter button: Button will be pushed
     - parameter count: Counter which means the times of the button pushing
     */
    open func pushButtonMultiple(_ button: String, counter: Int) {
        for _ in 0..<counter {
            self.pushButton(button)
        }
    }
    
    /**
     ZPTesting: Push a button
     - parameter button: Button which will be pushed with the keyboard
     */
    private func pushButton(_ button: String) {
        let key = app.keys[button]
        key.tap()
    }
    
    /**
     ZPTesting: Push 'shift' button on keyboard
     */
    private func pushShift() {
        app.keyboards.buttons["shift"].tap()
    }
    
}

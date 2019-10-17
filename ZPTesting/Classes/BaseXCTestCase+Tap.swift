//
//  BaseXCTestCase+Tap.swift
//  Pods-ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 14..
//

import Foundation
import XCTest

///Taps
extension BaseXCTestCase {
    
    /**
     ZPTesting: Find the element with the given id.
     - parameter id: Element id.
     - parameter type: The element type which will be searched.
     */
    open func tapElement(_ id: String, type: ElementType, parentElement: XCUIElement? = nil) {
        switch type {
        case .label:
            self.tapLabel(id, parentElement: parentElement)
        case .button:
            self.tapButton(id, parentElement: parentElement)
        case .image:
            self.tapImage(id, parentElement: parentElement)
        case .inputField:
            self.tapInputField(id, parentElement: parentElement)
        case .secureInputField:
            self.tapSecureInputField(id, parentElement: parentElement)
        case .searchField:
            self.tapSearchField(id, parentElement: parentElement)
        case .inputView:
            self.tapInputView(id, parentElement: parentElement)
        case .scrollView:
            self.tapScrollView(id, parentElement: parentElement)
        case .tables:
            self.tapTableView(id, parentElement: parentElement)
        case .collectionView:
            self.tapCollectionView(id, parentElement: parentElement)
        case .cells:
            self.tapCell(id, parentElement: parentElement)
        case .view:
            self.tapView(id, parentElement: parentElement)
        default:
            self.tapView(id, parentElement: parentElement)
        }
    }
    
    /**
     ZPTesting: Find a label with the given id
     - parameter id: The  elemnt id
     */
    func tapLabel(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.staticTexts[id].tap()
        } else {
            let element = self.letLabel(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a button with the given id
     - parameter id: The  elemnt id
     */
    func tapButton(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.buttons[id].tap()
        } else {
            let element = self.letButton(id)
            element.tap()
        }
        
    }
    
    /**
     ZPTesting: Find a image with the given id
     - parameter id: The  elemnt id
     */
    func tapImage(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.images[id].tap()
        } else {
            let element = self.letImage(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a input field with the given id
     - parameter id: The  elemnt id
     */
    func tapInputField(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.textFields[id].tap()
        } else {
            let element = self.letInputField(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a secure input field with the given id
     - parameter id: The  elemnt id
     */
    func tapSecureInputField(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.secureTextFields[id].tap()
        } else {
            let element = self.letSecureInputField(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a search field with the given id
     - parameter id: The  elemnt id
     */
    func tapSearchField(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.searchFields[id].tap()
        } else {
            let element = self.letSearchField(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a input view with the given id
     - parameter id: The  elemnt id
     */
    func tapInputView(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.textViews[id].tap()
        } else {
            let element = self.letInputField(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a scroll view with the given id
     - parameter id: The  elemnt id
     */
    func tapScrollView(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.scrollViews[id].tap()
        } else {
            let element = self.letScrollView(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a table view with the given id
     - parameter id: The  elemnt id
     */
    func tapTableView(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.tables[id].tap()
        } else {
            let element = self.letTableView(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a collection view with the given id
     - parameter id: The  elemnt id
     */
    func tapCollectionView(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.collectionViews[id].tap()
        } else {
            let element = self.letCollectionView(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a cell with the given id
     - parameter id: The  elemnt id
     */
    func tapCell(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.cells[id].tap()
        } else {
            let element = self.letCell(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a alert with the given id
     - parameter id: The  elemnt id
     */
    func tapAlert(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.alerts[id].tap()
        } else {
            let element = self.letAlert(id)
            element.tap()
        }
    }
    
    /**
     ZPTesting: Find a view with the given id
     - parameter id: The  elemnt id
     */
    func tapView(_ id: String, parentElement: XCUIElement? = nil) {
        if let parentElement = parentElement {
            parentElement.otherElements[id].tap()
        } else {
            let element = self.letView(id)
            element.tap()
        }
    }
    
}

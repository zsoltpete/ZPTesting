//
//  BaseXCTestCase+Let.swift
//  Pods-ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 14..
//

import Foundation
import XCTest

extension BaseXCTestCase {
    
    /**
     ZPTesting: Find the element with the given id.
     - parameter id: Element id.
     - parameter type: The element type which will be searched.
     - returns: The element which on the screen
     */
    open func letElement(_ id: String, type: ElementType) -> XCUIElement {
        switch type {
        case .label:
            return self.letLabel(id)
        case .button:
            return self.letButton(id)
        case .image:
            return self.letImage(id)
        case .inputField:
            return self.letInputField(id)
        case .secureInputField:
            return self.letSecureInputField(id)
        case .searchField:
            return self.letSearchField(id)
        case .inputView:
            return self.letInputView(id)
        case .scrollView:
            return self.letScrollView(id)
        case .tables:
            return self.letTableView(id)
        case .collectionView:
            return self.letCollectionView(id)
        case .cells:
            return self.letCell(id)
        case .view:
            return self.letView(id)
        default:
            return self.letView(id)
        }
    }
    
    /**
     ZPTesting: Find a label with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letLabel(_ id: String) -> XCUIElement {
        let element = app.staticTexts[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a button with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letButton(_ id: String) -> XCUIElement {
        let element = app.buttons[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a image with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letImage(_ id: String) -> XCUIElement {
        let element = app.images[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a input field with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letInputField(_ id: String) -> XCUIElement {
        let element = app.textFields[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a secure input field with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letSecureInputField(_ id: String) -> XCUIElement {
        let element = app.secureTextFields[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a search field with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letSearchField(_ id: String) -> XCUIElement {
        let element = app.searchFields[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a input view with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letInputView(_ id: String) -> XCUIElement {
        let element = app.textViews[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a scroll view with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letScrollView(_ id: String) -> XCUIElement {
        let element = app.scrollViews[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a table view with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letTableView(_ id: String) -> XCUIElement {
        let element = app.tables[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a collection view with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letCollectionView(_ id: String) -> XCUIElement {
        let element = app.collectionViews[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a cell with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letCell(_ id: String) -> XCUIElement {
        let element = app.cells[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a alert with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letAlert(_ id: String) -> XCUIElement {
        let element = app.alerts[id]
        return self.isExists(element)
    }
    
    /**
     ZPTesting: Find a view with the given id
     - parameter id: The  elemnt id
     - returns: The element which on the screen
     */
    open func letView(_ id: String) -> XCUIElement {
        let element = app.otherElements[id]
        return self.isExists(element)
    }
    
    /**
     Let cell at index
     - parameter bound: Index of cell
     - parameter table: Table of the cell
     - returns: Cell of the table
     */
    open func letCell(at bound: Int, table: XCUIElement? = nil) -> XCUIElement {
        if let table = table {
            return table.cells.element(boundBy: bound)
        } else {
            return app.cells.element(boundBy: bound)
        }
    }
    
    /**
    Let cell at index
    - parameter bound: Index of cell
    - parameter tableId: Table id which contains the cell
    - returns: Cell of the table
    */
    open func letCell(at bound: Int, tableId: String? = nil) -> XCUIElement {
        if let tableId = tableId {
            let table = self.letTableView(tableId)
            return table.cells.element(boundBy: bound)
        } else {
            return app.cells.element(boundBy: bound)
        }
    }
    
}

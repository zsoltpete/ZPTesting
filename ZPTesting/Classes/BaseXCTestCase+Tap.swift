//
//  BaseXCTestCase+Tap.swift
//  Pods-ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 14..
//

import Foundation

///Taps
extension BaseXCTestCase {
    
    /**
     ZPTesting: Find the element with the given id.
     - parameter id: Element id.
     - parameter type: The element type which will be searched.
     */
    open func tapElement(_ id: String, type: ElementType) {
        switch type {
        case .label:
            self.tapLabel(id)
        case .button:
            self.tapButton(id)
        case .image:
            self.tapImage(id)
        case .inputField:
            self.tapInputField(id)
        case .secureInputField:
            self.tapSecureInputField(id)
        case .searchField:
            self.tapSearchField(id)
        case .inputView:
            self.tapInputView(id)
        case .scrollView:
            self.tapScrollView(id)
        case .tables:
            self.tapTableView(id)
        case .collectionView:
            self.tapCollectionView(id)
        case .cells:
            self.tapCell(id)
        case .view:
            self.tapView(id)
        default:
            self.tapView(id)
        }
    }
    
    /**
     ZPTesting: Find a label with the given id
     - parameter id: The  elemnt id
     */
    func tapLabel(_ id: String) {
        let element = self.letLabel(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a button with the given id
     - parameter id: The  elemnt id
     */
    func tapButton(_ id: String) {
        let element = self.letButton(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a image with the given id
     - parameter id: The  elemnt id
     */
    func tapImage(_ id: String) {
        let element = self.letImage(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a input field with the given id
     - parameter id: The  elemnt id
     */
    func tapInputField(_ id: String) {
        let element = self.letInputField(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a secure input field with the given id
     - parameter id: The  elemnt id
     */
    func tapSecureInputField(_ id: String) {
        let element = self.letSecureInputField(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a search field with the given id
     - parameter id: The  elemnt id
     */
    func tapSearchField(_ id: String) {
        let element = self.letSearchField(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a input view with the given id
     - parameter id: The  elemnt id
     */
    func tapInputView(_ id: String) {
        let element = self.letInputView(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a scroll view with the given id
     - parameter id: The  elemnt id
     */
    func tapScrollView(_ id: String) {
        let element = self.letScrollView(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a table view with the given id
     - parameter id: The  elemnt id
     */
    func tapTableView(_ id: String) {
        let element = self.letTableView(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a collection view with the given id
     - parameter id: The  elemnt id
     */
    func tapCollectionView(_ id: String) {
        let element = self.letCollectionView(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a cell with the given id
     - parameter id: The  elemnt id
     */
    func tapCell(_ id: String) {
        let element = self.letCell(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a alert with the given id
     - parameter id: The  elemnt id
     */
    func tapAlert(_ id: String) {
        let element = self.letAlert(id)
        element.tap()
    }
    
    /**
     ZPTesting: Find a view with the given id
     - parameter id: The  elemnt id
     */
    func tapView(_ id: String) {
        let element = self.letView(id)
        element.tap()
    }
    
}

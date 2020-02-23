//
//  BaseXCTestCase.swift
//  Pods-ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 14..
//

import Foundation
import XCTest

open class BaseXCTestCase: XCTestCase, AppHolding {
    
    open var app = XCUIApplication()
    
    override open func setUp() {
        super.setUp()
        app.launch()
    }
    
    override open func tearDown() {
        super.tearDown()
    }
    
    open func setUp(with args: [String] = []) {
        super.setUp()
        app.launchArguments = args
        app.launch()
    }
    
}

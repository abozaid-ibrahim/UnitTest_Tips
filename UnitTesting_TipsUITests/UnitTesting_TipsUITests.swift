//
//  UnitTesting_TipsUITests.swift
//  UnitTesting_TipsUITests
//
//  Created by abuzeid on 12/27/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest
@testable import UnitTesting_Tips
class UnitTesting_TipsUITests: XCTestCase {

    
    override func setUp() {
        super.setUp()
        
        
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
   
    
    func testOPenHomePage() {
        
        let app = XCUIApplication()
        app.otherElements.containing(.table, identifier:"Empty list").children(matching: .textField).element.tap()
        app.buttons["abuse is"].tap()
        
        let addButton = app.toolbars["Toolbar"].buttons["ADD"]
        addButton.tap()
        addButton.tap()
        addButton.tap()
        addButton.tap()
        let cells = app.tables.matching(identifier: "shapes_table").cells.count
        XCTAssertEqual(app.tables.cells.count, 4)
        
    }
    
}

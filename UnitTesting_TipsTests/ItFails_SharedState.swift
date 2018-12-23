//
//  ItFails_SharedState.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest

class HomePrinter {
    var printerPaperCount = 0
    func print() {
        printerPaperCount += 1
    }
}

class ItFails_SharedState: XCTestCase {
    let printer = HomePrinter()
    func testPapersCount() {
        printer.print()
        XCTAssertEqual(printer.printerPaperCount, 1)
    }

    func testPerformanceExample() {
        printer.print()
        XCTAssertEqual(printer.printerPaperCount, 2)
    }
}

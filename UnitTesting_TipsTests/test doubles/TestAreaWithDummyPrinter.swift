//
//  TestAreaWithDummyPrinter.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//
import XCTest
@testable import UnitTesting_Tips


class TestAreaWithDummyPrinter: XCTestCase {
    func test_Area() {
        let square = Square(saver: DummySaver())
        square.side = 5
        XCTAssertEqual(square.area, 25)
    }
    
    private final class DummySaver: SaverProtocol {
        func save(value: Float) { }
    }
    
}

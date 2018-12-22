//
//  TestAreaWithFakeSaverTestCase.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest
@testable import UnitTesting_Tips

class TestAreaWithFakeSaverTestCase: XCTestCase {
    func test_Area() {
        let sut = Square(saver: DummySaver())
        sut.side = 5
        XCTAssertEqual(sut.area, 25)
    }
    
    class DummySaver: SaverProtocol {
        func save(value: Float) { }
    }

}

//
//  TestUserCountsWithSpy.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest
@testable import UnitTesting_Tips

class TestUserCountsWithSpy: XCTestCase {
    
    func test_SaveArea() {
        let saver = SpySaver()
        let sut = Square(saver: saver)
        sut.side = 5
        
        sut.saveArea()
        
        XCTAssertEqual(saver.saveCallsCount, 1)
        XCTAssertEqual(saver.saveValue, 25)
    }
    
    class SpySaver: SaverProtocol {
        var saveCallsCount = 0
        var saveValue: Float?
        
        func save(value: Float) {
            saveCallsCount += 1
            saveValue = value
        }
    }
}

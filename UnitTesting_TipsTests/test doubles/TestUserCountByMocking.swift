//
//  TestUserCountByMocking.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

@testable import UnitTesting_Tips
import XCTest

class TestUserCountByMocking: XCTestCase {
    func test_SaveArea() {
        let saver = MockSaver()
        let sut = Square(saver: saver)
        sut.side = 5

        sut.saveArea()

        saver.verify(saveCallsCount: 1, saveValue: 25)
    }

    class MockSaver: SaverProtocol {
        private var saveCallsCount = 0
        private var saveValue: Float?

        func save(value: Float) {
            saveCallsCount += 1
            saveValue = value
            /// do real work here
        }

        func verify(saveCallsCount: Int, saveValue: Float) {
            XCTAssertEqual(self.saveCallsCount, saveCallsCount)
            XCTAssertEqual(self.saveValue, saveValue)
        }
    }
}

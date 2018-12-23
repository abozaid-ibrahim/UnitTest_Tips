//
//  TestCasesArragneMatters.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest

class TestCasesArragneMatters: XCTestCase {
    var counter = 0
    func testAB() {
        print("log>\(#function)")
        counter += 1
        XCTAssertEqual(counter, 1)
    }

    func testAC() {
        print("log>\(#function)")
        counter += 1
        XCTAssertEqual(counter, 2)
    }

    func testAD() {
        print("log>\(#function)")
        counter += 1
        XCTAssertEqual(counter, 3)
    }
}

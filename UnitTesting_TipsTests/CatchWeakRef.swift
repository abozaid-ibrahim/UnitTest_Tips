//
//  CatchWeakRef.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest
class Greeter {
    func greet(_ name: String) -> String {
        return "Hello \(name)"
    }

    deinit {
        print("I'm in deinit")
    }
}

class CatchWeakRef: XCTestCase {
    func testGreeting() {
        var sut: Greeter? = .init()
        weak var weakSut = sut

        XCTAssertEqual(sut?.greet("Ali"), "Hello Ali")

        sut = nil
        XCTAssertNil(weakSut)
    }
}

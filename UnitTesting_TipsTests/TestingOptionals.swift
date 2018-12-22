//
//  TestingOptionals.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest
struct Student{
    var id:Int?
    let name:String?
}
class TestingOptionals: XCTestCase {
    
    var studentsQueue = [Student]()

    func testUserName() {
        studentsQueue.append(Student(id: 1, name: "Ali"))
        XCTAssertEqual(studentsQueue.first!.name!, "Ali")
    }
}

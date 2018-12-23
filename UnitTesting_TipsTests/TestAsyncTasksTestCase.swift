//
//  TestAsyncTasksTestCase.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/21/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

@testable import UnitTesting_Tips
import XCTest
class TestAsyncTasksTestCase: XCTestCase {
    let service = VideoService()

    func testSuccessfulVideoRequestReturnsVideos() {
        let myExpectation = expectation(description: "service callback complete")
        service.videos(forUserID: 1) { videos in
            XCTAssertEqual(videos.count, 3)
            XCTAssertEqual(videos[0].title, "John")
            myExpectation.fulfill()
        }
        waitForExpectations(timeout: 10)
    }
}

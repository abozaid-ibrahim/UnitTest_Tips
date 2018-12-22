//
//  ItNeverFailTestCase.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/21/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest
@testable import UnitTesting_Tips
class VideoService{
    func videos(forUserID:Int,_ videos:@escaping ([Video])->Void){
        DispatchQueue.global().asyncAfter(deadline:.now() + 2.0,execute: {[weak self] in
            if self == nil {return}
            videos([Video(id: 1, title: "John"),
                    Video(id: 2, title: "ali"),
                    Video(id: 3, title: "Mohamed")])
        })
    }
}

class ItNeverFailTestCase: XCTestCase {
   
    let service = VideoService()
    func testSuccessfulVideoRequestReturnsVideos() {
        service.videos(forUserID: 1) { videos in
            XCTAssertEqual(videos.count, 1)
            XCTAssertEqual(videos[0].title, "Yasser")
        }
    }
}



/**
 Xcode moves on from the test without waiting for it to return.
 If the entire test suite completes before the asynchronous response is received,
 Xcode will never check the assertions,
 so it will consider the test to have passed.
 */

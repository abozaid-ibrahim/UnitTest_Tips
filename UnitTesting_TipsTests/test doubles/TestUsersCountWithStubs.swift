//
//  TestUsersCountWithStubs.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/22/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest
@testable import UnitTesting_Tips


private class UsersRepository {
    private let users: [User]
    
    init(usersService: UsersServiceProtocol) {
        self.users = usersService.fetchUsers()
    }
    
    func usersCountMessage() -> String {
        return "Number of users in the system: \(users.count)"
    }
}

class TestUsersCountWithStubs: XCTestCase {

    func test_Init() {
        let stubUsersService = StubUsersService()
        _ = UsersRepository(usersService: stubUsersService)
        XCTAssertTrue(stubUsersService.isFetchUsersCalled)
    }
    
    class StubUsersService: UsersServiceProtocol {
        var isFetchUsersCalled = false
        
        func fetchUsers() -> [User] {
            isFetchUsersCalled = true
            return []
        }
    }
    
}

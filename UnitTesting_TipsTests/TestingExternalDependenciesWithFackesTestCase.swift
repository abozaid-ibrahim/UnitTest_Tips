//
//  TestingExternalDependenciesWithFackesTestCase.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/21/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import XCTest
@testable import UnitTesting_Tips
///YOUR APP Implementaion


protocol UsersServiceProtocol {
    func fetchUsers() -> [User]
}

class UsersService: UsersServiceProtocol {
    func fetchUsers() -> [User] {
        let users:[User] = [] // execute a query in a Database --OR -- Get your data form remote source
        return users
    }
}

class UsersRepo {
    
    private let users: [User]
    
    init(usersService: UsersServiceProtocol) {
        self.users = usersService.fetchUsers()
    }
    
    func getRegisteredUsersCount() -> Int {
        return users.count
    }
}

class TestingExternalDependenciesWithFackesTestCase: XCTestCase {
   
    func test_UsersCountMessage() {
        let sut = UsersRepo(usersService: FakeUsersService())
        XCTAssertEqual(sut.getRegisteredUsersCount(),2)
    }
    
    class FakeUsersService: UsersServiceProtocol {
        func fetchUsers() -> [User] {
            return [User(identifier: "1", username: "Abuzeid"),
                    User(identifier: "2", username: "Hamed")]
        }
    }
    
}

//
//  AppCoordinatorTests.swift
//  VMTests
//
//  Created by Keith on 09/02/2022.
//

import XCTest
@testable import VM

class AppCoordinatorTests: XCTestCase {

    let sut: AppCoordinator = AppCoordinator()
    
    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {
    }

    func test_start() throws {
        XCTAssertFalse(sut.started)
        XCTAssertEqual(sut.childCoordinators.count, 0)
        sut.start()
        XCTAssertTrue(sut.started)
        XCTAssertEqual(sut.childCoordinators.count, 2)
    }

}

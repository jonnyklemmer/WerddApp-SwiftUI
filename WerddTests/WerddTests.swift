//
//  WerddTests.swift
//  WerddTests
//
//  Created by Jonny Klemmer on 5/2/22.
//

import XCTest
@testable import Werdd

class WerddTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetRandomWord() throws {
        let random = WordDataStore.shared.getRandomWord()

        XCTAssertNotNil(random)
    }

    func testSearchWords() throws {
        let results = WordDataStore.shared.searchWords(query: "test")

        XCTAssertFalse(results.isEmpty)
    }
}

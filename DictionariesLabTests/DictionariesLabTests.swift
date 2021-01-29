//
//  DictionariesLabTests.swift
//  DictionariesLabTests
//
//  Created by Kevin McQuown on 1/29/21.
//

import XCTest

class DictionariesLabTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetValueForKey() throws {
        XCTAssertEqual(Lab().getValueForKey(key: "foo", dictionary: ["foo": 1, "bar": 2, "foobar": 3]), 1)
    }

    func testGetValueForKey2() throws {
        XCTAssertEqual(Lab().getValueForKey(key: "bar", dictionary: ["foo": 1, "bar": 2, "foobar": 3]), 2)
    }

    func testMergeDictionaries() throws {
        XCTAssertEqual(Lab().mergeTheTwoDictionaries(dict: ["foo": 2, "bar": 3], dict2: ["a": 1, "b": 2]),
                       ["foo": 2, "bar": 3, "a": 1, "b": 2])
    }

    func testReturnKeys() throws {
        XCTAssertEqual(Lab().allKeys(dictionary: ["elk": 4, "deer": 5, "camel": 2]), ["camel","deer","elk"])
    }

    func testRemoveKeysFromDict() throws {
        XCTAssertEqual(Lab().removeKeysFromDict(keys: ["a","b"], dictionary: ["a": 4, "b":3, "c": 6, "d": 2]),
                       ["c": 6, "d": 2])
    }

}

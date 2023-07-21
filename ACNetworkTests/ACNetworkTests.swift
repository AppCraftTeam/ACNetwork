//
//  ACNetworkTests.swift
//  ACNetworkTests
//
//  Created by AppCraft LLC on 6/30/21.
//

import XCTest
@testable import ACNetwork

class ACNetworkTests: XCTestCase {

    func testSimpleParameterStringGenerator() throws {
        let params: [String: Any] = [
            "param1": 1,
            "param2": "bar",
        ]
        let str = ParameterStringGenerator.generate(with: params)
        XCTAssertTrue(str.contains("param1=1"))
        XCTAssertTrue(str.contains("param2=bar"))
        XCTAssertTrue(str.filter { $0 == "&" }.count == params.count - 1)
    }
    
    func testAllParameterStringGenerator() throws {
        let params: [String: Any] = [
            "param1": 1,
            "param2": "bar",
            "param3": [1,2,3],
            "param4": ["foo", "bar"]
        ]
        let str = ParameterStringGenerator.generate(with: params)
        XCTAssertTrue(str.contains("param1=1"))
        XCTAssertTrue(str.contains("param2=bar"))
        XCTAssertTrue(str.contains("param3=1,2,3"))
        XCTAssertTrue(str.contains("param4=foo,bar"))
        XCTAssertTrue(str.filter { $0 == "&" }.count == params.count - 1)
    }
}

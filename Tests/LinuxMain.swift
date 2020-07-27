import XCTest

import storeTests

var tests = [XCTestCaseEntry]()
tests += storeTests.allTests()
XCTMain(tests)

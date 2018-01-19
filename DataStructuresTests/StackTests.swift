// Copyright (c) 2018 NUS CS3217. All rights reserved.

import XCTest
@testable import DataStructures

class StackTests: XCTestCase {

    func testPush() {
        var stack = Stack<Int>()
        stack.push(1)

        XCTAssertEqual(stack.toArray(), [1], "The item is not pushed correctly!")
    }

    func testPop() {
        var stack = Stack<Int>()
        stack.push(2)
        stack.push(3)

        XCTAssertEqual(stack.pop(), 3, "The item is not popped correctly!")
        XCTAssertEqual(stack.count, 1, "The stack size is not correct")
    }

    func testPeek() {
        var stack = Stack<Int>()
        stack.push(4)

        XCTAssertEqual(stack.peek(), 4,
                       "The item is not peeked correctly!")
        XCTAssertEqual(stack.count, 1,
                       "The stack size is not correct")
    }

    func testCount() {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        XCTAssertEqual(stack.count, 3,
                       "The stack's length is not correct!")
    }

    func testIsEmptyUponInit() {
        let stack = Stack<Int>()
        XCTAssertTrue(stack.isEmpty,
                      "The stack should be empty upon initialization!")
    }

    func testIsEmptyAfterPopping () {
        var stack = Stack<Int>()
        stack.push(1)
        _ = stack.pop()
        XCTAssertTrue(stack.isEmpty,
                      "The stack should be empty after popping all elements!")
    }

    func testRemoveAll() {
        var stack = Stack<Int>()
        (1...10).forEach { stack.push($0) }
        stack.removeAll()
        XCTAssertTrue(stack.isEmpty,
                      "The stack should be empty after removing all elements")
    }

    func testToArray() {
        var stack = Stack<Int>()
        (1...5).forEach { stack.push($0) }
        XCTAssertEqual(stack.toArray(), [5, 4, 3, 2, 1],
                       "The stack array is incorrect!")
    }
}

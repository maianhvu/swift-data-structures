// Copyright (c) 2018 NUS CS3217. All rights reserved.

import XCTest
@testable import DataStructures

class QueueTests: XCTestCase {

    func testEnqueue() {
        var queue = Queue<String>()
        queue.enqueue("1")

        XCTAssertEqual(queue.toArray(), ["1"], "The item is not enqueued correctly!")
    }

    func testDequeue() {
        var queue = Queue<String>()
        queue.enqueue("2")
        queue.enqueue("3")

        XCTAssertEqual(queue.dequeue(), "2", "The item is not dequeued correctly!")
        XCTAssertEqual(queue.toArray(), ["3"], "The queue has incorrect elements!")
    }

    func testPeek() {
        var queue = Queue<String>()
        queue.enqueue("4")

        XCTAssertEqual(queue.peek(), "4", "The item is not peeked correctly!")
        XCTAssertEqual(queue.count, 1, "The queue's length is not correct!")
    }

    func testCount() {
        var queue = Queue<String>()
        queue.enqueue("1")
        queue.enqueue("2")
        queue.enqueue("3")
        XCTAssertEqual(queue.count, 3, "The queue's length is not correct!")
    }

    func testIsEmptyUponInit() {
        let queue = Queue<String>()
        XCTAssertTrue(queue.isEmpty, "The queue should be empty upon initialization")
    }

    func testIsEmptyUponDequeue() {
        var queue = Queue<String>()
        queue.enqueue("1")
        _ = queue.dequeue()
        XCTAssertTrue(queue.isEmpty, "The queue should be empty after dequeueing")
    }

    func testRemoveAll() {
        var queue = Queue<String>()
        (1...10).map { String($0) }.forEach { queue.enqueue($0) }
        queue.removeAll()
        XCTAssertTrue(queue.isEmpty, "The queue should be empty after removing all")
    }

    func testToArray() {
        var queue = Queue<String>()
        (1...5).map { String($0) }.forEach { queue.enqueue($0) }
        XCTAssertEqual(queue.toArray(), ["1", "2", "3", "4", "5"], "The queue should convert properly")
    }
}

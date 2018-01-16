// Copyright (c) 2018 NUS CS3217. All rights reserved.

/**
 A generic `Queue` class whose elements are first-in, first-out.

 - Authors: CS3217
 - Date: 2018
 */
struct Queue<T> {

    //-------------------------------------------------------------------------
    // MARK: - Properties
    //-------------------------------------------------------------------------
    private var head: Node<T>?
    private var tail: Node<T>?

    /// Adds an element to the tail of the queue.
    /// - Parameter item: The element to be added to the queue
    mutating func enqueue(_ item: T) {
        if let unwrappedTail = self.tail {
            unwrappedTail.next = Node(item)
            self.tail = unwrappedTail.next
        } else {
            tail = Node(item)
        }
        if head == nil {
            head = tail
        }
    }

    /// Removes an element from the head of the queue and return it.
    /// - Returns: item at the head of the queue
    mutating func dequeue() -> T? {
        if let unwrappedHead = self.head {
            self.head = unwrappedHead.next
            return unwrappedHead.value
        } else {
            return nil
        }
    }

    /// The number of elements currently in the queue.
    var count: Int {
        if head == nil {
            return 0
        }
        var itemCount = 0
        var currentNode = head
        while let node = currentNode {
            itemCount += 1
            currentNode = node.next
        }
        return itemCount
    }


    /// Returns, but does not remove, the element at the head of the queue.
    /// - Returns: item at the head of the queue
    func peek() -> T? {
         return self.head?.value
    }

    /// Whether the queue is empty.
    var isEmpty: Bool {
        return head == nil || tail == nil
    }

    /// Removes all elements in the queue.
    mutating func removeAll() {
        head = nil
        tail = nil
    }

    /// Returns an array of the elements in their respective dequeue order, i.e.
    /// first element in the array is the first element to be dequeued.
    /// - Returns: array of elements in their respective dequeue order
    func toArray() -> [T] {
        var node = head
        var array = [T]()
        while node != nil, let unwrappedNode = node {
            array.append(unwrappedNode.value)
            node = node?.next
        }
        return array
    }
}

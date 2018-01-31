// Copyright (c) 2018 NUS CS3217. All rights reserved.

/**
 A generic `Queue` class whose elements are first-in, first-out.

 - Authors: CS3217
 - Date: 2018
 */
public struct DSQueue<T> {

    //-------------------------------------------------------------------------
    // MARK: - Properties
    //-------------------------------------------------------------------------
    private var head: DSNode<T>?
    private var tail: DSNode<T>?
    
    public init() {
        // Do nothing
    }

    /// Adds an element to the tail of the queue.
    /// - Parameter item: The element to be added to the queue
    public mutating func enqueue(_ item: T) {
        if let unwrappedTail = tail {
            unwrappedTail.next = DSNode(item)
            tail = unwrappedTail.next
        } else {
            tail = DSNode(item)
        }
        if head == nil {
            head = tail
        }
    }

    /// Removes an element from the head of the queue and return it.
    /// - Returns: item at the head of the queue
    public mutating func dequeue() -> T? {
        if let unwrappedHead = head {
            head = unwrappedHead.next
            // If head becomes nil then let tail be nil too
            if head == nil {
                tail = nil
            }
            return unwrappedHead.value
        } else {
            return nil
        }
    }

    /// The number of elements currently in the queue.
    public var count: Int {
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
    public func peek() -> T? {
         return self.head?.value
    }

    /// Whether the queue is empty.
    public var isEmpty: Bool {
        return head == nil || tail == nil
    }

    /// Removes all elements in the queue.
    public mutating func removeAll() {
        head = nil
        tail = nil
    }

    /// Returns an array of the elements in their respective dequeue order, i.e.
    /// first element in the array is the first element to be dequeued.
    /// - Returns: array of elements in their respective dequeue order
    public func toArray() -> [T] {
        var node = head
        var array = [T]()
        while node != nil, let unwrappedNode = node {
            array.append(unwrappedNode.value)
            node = node?.next
        }
        return array
    }
}

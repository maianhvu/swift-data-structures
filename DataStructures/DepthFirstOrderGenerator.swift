// Copyright (c) 2018 NUS CS3217. All rights reserved.

/**
 A generator that returns the nodes in the graph in depth-first search order,
 starting at the given node.

 - Authors: CS3217
 - Date: 2018
 */
struct DepthFirstOrderGenerator<Key: Hashable, Value: Collection>: IteratorProtocol,
    Sequence where Value.Iterator.Element == Key {

    private let graph: [Key: Value]
    private var frontier = Stack<Key>()
    private var visited = Set<Key>()

    /// Constructs a `DepthFirstOrderGenerator` with the given graph and start
    /// node.
    /// - Parameters:
    ///   - graph: A dictionary of node to adjacency list pairs.
    ///   - start: The start node.
    init?(graph: [Key: Value], start: Key) {
        self.graph = graph
        self.frontier.push(start)
    }

    func makeIterator() -> DepthFirstOrderGenerator<Key, Value> {
        return self
    }

    mutating func next() -> Key? {
        while let key = frontier.pop() {
            if visited.contains(key) {
                continue
            }
            // Visit the node
            visited.insert(key)
            // Construct the frontier
            graph[key]?
                .filter { !visited.contains($0) }
                .reversed() // For pre-order traversal
                .forEach { frontier.push($0) }
            return key
        }
        return nil
    }
}

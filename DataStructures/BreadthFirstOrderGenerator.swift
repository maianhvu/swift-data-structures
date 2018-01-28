// Copyright (c) 2018 NUS CS3217. All rights reserved.

/**
 A generator that returns the nodes in the graph in breadth-first search order,
 starting at the given node.

 - Authors: CS3217
 - Date: 2018
 */
struct BreadthFirstOrderGenerator<Key: Hashable, Value: Collection>: IteratorProtocol,
    Sequence where Value.Iterator.Element == Key {

    private let graph: [Key: Value]
    private var frontier = DSQueue<Key>()
    private var visited = Set<Key>()

    /// Constructs a `BreadthFirstOrderGenerator` with the given graph and start
    /// node.
    /// - Parameters:
    ///   - graph: A dictionary of node to adjacency list pairs.
    ///   - start: The start node.
    init?(graph: [Key: Value], start: Key) {
        // Start doesn't exist in graph
        if graph[start] == nil {
            return nil
        }
        self.graph = graph
        self.frontier.enqueue(start)
    }

    func makeIterator() -> BreadthFirstOrderGenerator<Key, Value> {
        return self
    }

    mutating func next() -> Key? {
        while let key = frontier.dequeue() {
            // Skip if node is already visited
            if visited.contains(key) {
                continue
            }
            // Visit the node
            visited.insert(key)
            // Construct the frontier
            graph[key]?
                // Only select non-visited nodes
                .filter { !visited.contains($0) }
                // Add them to the frontier
                .forEach { frontier.enqueue($0) }
            return key
        }
        return nil
    }
}

//
//  Node.swift
//  DataStructures
//
//  Created by Mai Anh Vu on 1/15/18.
//  Copyright © 2018 NUS CS3217. All rights reserved.
//

class DSNode<T> {
    //-------------------------------------------------------------------------
    // MARK: - Properties
    //-------------------------------------------------------------------------
    let value: T
    var next: DSNode<T>?

    //-------------------------------------------------------------------------
    // MARK: - Initialization
    //-------------------------------------------------------------------------
    init(_ value: T) {
        self.value = value
    }

    //-------------------------------------------------------------------------
    // MARK: - Debugging
    //-------------------------------------------------------------------------
    var description: String {
        return "(\(String(describing: self.value))"
    }
}

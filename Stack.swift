//
//  Stack.swift
//  Created by Junhao on 2019-10-02.
//

public struct Stack<Element> {
    
    private var storage: [Element] = []
    public init() { }
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    public mutating func push(_ element: Element) { storage.append(element)
    }
    
    @discardableResult public mutating func pop() -> Element? { return storage.popLast()
    }
    
    public func peek() -> Element? {
        return storage.last
    }
    
    public var isEmpty: Bool {
        return peek() == nil
    }
}

// Push and pop both have a O(1) time complexity. Since array offers constant time insertions and deletions at one end via append and popLast.
extension Stack: CustomStringConvertible {
    
    public var description: String {
        let topDivider = "----top----\n"
        let bottomDivider = "\n-----------"
        
        let stackElements = storage
            .map { "\($0)" }
            .reversed()
            .joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}

/* example(of: "initializing a stack from an array literal") {
 var stack: Stack = [1.0, 2.0, 3.0, 4.0]
 print(stack)
 stack.pop()
}*/
extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

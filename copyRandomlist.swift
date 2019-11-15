class Solution {
    func copyRandomList(_ head: RandomListNode?) -> RandomListNode? {
        var cur: RandomListNode? = head
        var next: RandomListNode? = nil
        
        while cur != nil {
            next = cur!.next
            let copy = RandomListNode(cur!.label)
            cur!.next = copy
            copy.next = next
            cur = next
        }
        
        cur = head
        while cur != nil {
            if cur!.random != nil {
                cur!.next?.random = cur!.random?.next
            }
            cur = cur!.next?.next
        }
        
        cur = head
        let dummy = RandomListNode(0)
        var copy: RandomListNode? = dummy
        var copyCur: RandomListNode? = dummy
        while cur != nil {
            next = cur!.next?.next
            copy = cur!.next
            copyCur?.next = copy
            copyCur = copy
            cur!.next = next
            cur = next
        }
        
        return dummy.next
    }
    
    func copyRandomList_HashMap(_ head: RandomListNode?) -> RandomListNode? {
        guard let head = head else {
            return nil
        }
        
        var map = [RandomListNode: RandomListNode]()
        var cur: RandomListNode? = head
        
        while cur != nil {
            map[cur!] = RandomListNode(cur!.label)
            cur = cur!.next
        }
        cur = head
        while cur != nil {
            if let curNext = cur!.next {
                map[cur!]!.next = map[curNext]
            } else {
                map[cur!]!.next = nil
            }
            if let curRandom = cur!.random {
                map[cur!]!.random = map[curRandom]
            } else {
                map[cur!]!.random = nil
            }
            cur = cur!.next
        }
        
        return map[head]
    }
}

public class RandomListNode {
    public var label: Int
    public var next: RandomListNode?
    public var random: RandomListNode?
    
    public init(_ label: Int) {
        self.label = label
        self.next = nil
        self.random = nil
    }
}

extension RandomListNode: Equatable {
    public static func == (_ lhs: RandomListNode, _ rhs: RandomListNode) -> Bool {
        return lhs.label == rhs.label
    }
}

extension RandomListNode: Hashable {
    public var hashValue: Int {
        return label
    }
}

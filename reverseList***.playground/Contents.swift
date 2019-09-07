/*****
 Reverse a singly linked list.
 Example:
 Input: 1->2->3->4->5->NULL
 Output: 5->4->3->2->1->NULL
 Idea: Using two helper nodes to change point direction each step
 Time Complexity: O(n), Space Complexity: O(1) / n is the list's length
*/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// iteratively
func reverseList(head: ListNode?) -> ListNode? {
    var temp: ListNode?
    var first = head
    while first != nil {
        let second = first!.next
        first!.next = temp
        temp = first
        first = second
    }
    return temp
}

// recursively
func reverseList(_ head: ListNode?) -> ListNode? {
    guard let h = head, let next = h.next else {
        return head
    }
    let node = reverseList(next)
    next.next = h
    h.next = nil
    return node
}

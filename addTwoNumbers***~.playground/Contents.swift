/***
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Example:
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 Explanation: 342 + 465 = 807.
 
 Idea: carry & iterate through both linked lists
 Time Complexity: O(n), Space Complexity: O(1)
*/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    guard let l1 = l1 else {
        return l2
    }
    guard let l2 = l2 else {
        return l1
    }
    
    let sum = l1.val + l2.val
    let node = ListNode(sum % 10)
    
    if sum > 9 {
        node.next = addTwoNumbers(addTwoNumbers(l1.next, l2.next), ListNode(1))
    } else {
        node.next = addTwoNumbers(l1.next, l2.next)
    }
    return node
}

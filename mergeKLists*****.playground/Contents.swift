/*****
 Merge k sorted linked lists and return it as one sorted list. Analyze and describe its complexity.
 Example:
 Input:
 [ 1->4->5,
 1->3->4,
 2->6 ]
 Output: 1->1->2->3->4->4->5->6
 Idea: Divide and Conqure
 Time Complexity: O(mlogn), m stands for the length of one list, n stands for the number of lists. Space Complexity: O(1)
*/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func mergeKLists(lists: [ListNode?]) -> ListNode? {
    guard lists.count > 0 else {
        return nil
    }
    var lists = lists
    var left = 0
    var right = lists.count - 1
    
    while right > 0 {
        left = 0
        while left < right {
            lists[left] = mergeTwoLists(lists[left], lists[right])
            left += 1
            right -= 1
        }
    }
    return lists[0]
}

private func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    var l1 = l1
    var l2 = l2
    
    let dummy = ListNode(0)
    var node = dummy
    
    while l1 != nil && l2 != nil {
        if l1!.val < l2!.val {
            node.next = l1
            l1 = l1!.next
        } else {
            node.next = l2
            l2 = l2!.next
        }
        node = node.next! // "!"
    }
    node.next = l1 ?? l2
    return dummy.next
}

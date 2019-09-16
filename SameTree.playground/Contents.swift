/*
 Given two binary trees, write a function to check if they are the same or not.
 Two binary trees are considered the same if they are structurally identical and the nodes have the same value.
 
 Example 1:
 Input:     1         1
           / \       / \
          2   3     2   3
 [1,2,3],   [1,2,3]
 Output: true
 
 Example 2:
 Input:     1         1
           /           \
          2             2
 [1,2],     [1,null,2]
 Output: false
 
 Example 3:
 Input:     1         1
           / \       / \
          2   1     1   2
 [1,2,1],   [1,1,2]
 Output: false

 Time Complexity: O(n), Space Complexity: O(n)
*/

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func isSameTree(_ t1: TreeNode?, _ t2: TreeNode?) -> Bool {
    guard let t1 = t1 else {
        return t2 == nil
    }
    guard let t2 = t2 else {
        return false
    }
    if t1.val != t2.val {
        return false
    }
    return isSameTree(t1.left, t2.left) && isSameTree(t1.right, t2.right)
}

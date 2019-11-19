class Solution {
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        
        var longest = 0
        maxDepth(root, &longest)
        return longest
    }
    
    func maxDepth(_ root: TreeNode?, _ longest: inout Int) -> Int {
        guard let root = root else { return 0 }
        var left = maxDepth(root.left, &longest)
        var right = maxDepth(root.right, &longest)
        longest = max(longest, left + right)
        return max(left, right) + 1
    }
    
}

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        
        let l : TreeNode? = invertTree(root.left)
        let r : TreeNode? = invertTree(root.right)
        root.right = l
        root.left = r
        return root
    }
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return root
        }
        var stack = [TreeNode]()
        stack.push(root)
        
        while(!stack.isEmpty()){
            var node = stack.popLast()
            var left = node.left
            node.left = node.right
            node.right = left
            
            if let nodeLeft = node.left {
                stack.push(nodeLeft)
            }
            if let nodeRight = node.right {
                stack.push(nodeRight)
            }
        }
        return root
}
}

class Solution {
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        var stack = [(p,q)]
        
        while let tuple = stack.popLast(){
            if tuple.0 == nil && tuple.1 == nil{
                continue
            }
            if tuple.0 == nil || tuple.1 == nil{
                return false
            }
            if tuple.0!.val == tuple.1!.val{
                stack.append((tuple.0!.left, tuple.1!.left))
                stack.append((tuple.0!.right, tuple.1!.right))
            }else{
                return false
            }
        }
        return true
        
    }
}

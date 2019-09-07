/* Given a binary tree, return all root-to-leaf paths.
 Note: A leaf is a node with no children.
 Example:
 Input:
   1
 /  \
2    3
 \
  5
 Output: ["1->2->5", "1->3"]
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

func binaryTreePaths(_ root: TreeNode?) -> [String] {
    var answer = [String]()
    if (root != nil){
        searchBT(root!, "", &answer)
    }
    return answer
}

func searchBT(_ root: TreeNode, _ path: String, _ answer: inout [String]) {
    var path = path
    path += String(root.val)
    
    if let left = root.left{
        searchBT(left, path+"->", &answer)
    }
    if let right = root.right{
        searchBT(right, path+"->", &answer)
    }
    if root.left == nil && root.right == nil {
        answer.append(path)
    }
}

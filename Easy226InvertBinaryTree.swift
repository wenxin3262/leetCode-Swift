/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
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
class Solution {
    func invertTree(root: TreeNode?) -> TreeNode? {
        if root == nil {
            return root
        }
        let r = invertTree(root?.right)
        let l = invertTree(root?.left)
        root?.right = l
        root?.left = r
        return root
    }
}

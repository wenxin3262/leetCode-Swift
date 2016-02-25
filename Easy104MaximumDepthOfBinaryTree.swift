/*
Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

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
    func maxDepth(root: TreeNode?) -> Int {
        if let root = root {
            return max(maxDepth(root.left), maxDepth(root.right)) + 1
        } else {
            return 0
        }
    }
}

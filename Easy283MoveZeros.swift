/*
Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

Note:
You must do this in-place without making a copy of the array.
Minimize the total number of operations.
*/

class Solution {
    func moveZeroes(inout nums: [Int]) {
        var i = 0
        for var count = 0; count < nums.count; ++count {
            if nums[i] == 0 {
                nums.append(nums.removeAtIndex(i))
            } else {
                ++i
            }
        }
    }
}

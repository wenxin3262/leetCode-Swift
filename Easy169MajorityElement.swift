/*
Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

You may assume that the array is non-empty and the majority element always exist in the array.
*/

class Solution {
    func majorityElement(nums: [Int]) -> Int {
        var result = nums[0]
        var count = 1
        for num in nums {
            if num == result {
                ++count
            } else {
                --count
                if (count == 0) {
                    result = num
                    count = 1
                }
            }
        }
        return result
    }
}

/*
Given a roman numeral, convert it to an integer.

Input is guaranteed to be within the range from 1 to 3999.
*/
class Solution {
    func romanToInt(s: String) -> Int {
        let roman = ["I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000]
        var res = 0
        let nums = s.characters.map { (char) -> Int in
            return roman[String(char)]!
        }

        for (i, value) in nums.enumerate() {
            if i > 0 && value > nums[i-1] {
                res -= nums[i-1] * 2
                res += value
            } else {
                res += value
            }
        }
        return res
    }
}

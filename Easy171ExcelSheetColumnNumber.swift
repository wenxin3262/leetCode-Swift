/*
Given a column title as appear in an Excel sheet, return its corresponding column number.

For example:

    A -> 1
    B -> 2
    C -> 3
    ...
    Z -> 26
    AA -> 27
    AB -> 28
*/

class Solution {
    func titleToNumber(s: String) -> Int {
        return s.unicodeScalars.reduce(0) {
            (accu, scalar) -> Int in
            return accu * 26 + Int(scalar.value) - 64
        }
    }
}

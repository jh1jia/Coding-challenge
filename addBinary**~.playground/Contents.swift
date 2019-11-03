/* Given two binary strings, return their sum (also a binary string).
 The input strings are both non-empty and contains only characters 1 or 0.
 Example 1:
 Input: a = "11", b = "1"
 Output: "100"
 Example 2:
 Input: a = "1010", b = "1011"
 Output: "10101"
 
 Time Complexity: O(n), Space Complexity: O(n)
*/

func addBinary(_ a: String, _ b: String) -> String {
    
    let aChars = Array(a), bChars = Array(b)
    var sum = 0, carry = 0, result = ""
    
    var i = aChars.count - 1, j = bChars.count - 1
    
    while i >= 0 || j >= 0 || carry > 0 {
        sum = carry
        if i >= 0 {
            sum += Int(String(aChars[i]))!
            i -= 1
        }
        if j >= 0 {
            sum += Int(String(bChars[j]))!
            j -= 1
        }
        carry = sum / 2
        sum = sum % 2
        result = String(sum) + result
    }
    return result
}

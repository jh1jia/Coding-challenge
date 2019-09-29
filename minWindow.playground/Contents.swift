/******
Given a string S and a string T, find the minimum window in S which will contain all the characters in T in complexity O(n).
Example:
Input: S = "ADOBECODEBANC", T = "ABC"
Output: "BANC"
Note:
If there is no such window in S that covers all characters in T, return the empty string "".
If there is such window, you are guaranteed that there will always be only one unique minimum window in S
*/

func minWindow(_ s: String, _ t: String) -> String {
    
    var target = [Int](repeating: 0, count: 128)
    
    let ss = Array(s.utf8).map{Int($0)}
    let tt = Array(t.utf8).map{Int($0)}
    
    for i in tt {
        target[i] += 1
    }
    
    var count = tt.count
    var length = Int.max
    let slen = ss.count
    var start = 0
    var l = 0, r = 0
    
    while r < slen {
        
        if target[ss[r]] > 0 {
            count -= 1
        }
        target[ss[r]] -= 1 // eg:【-1，-1，-1，0，-1，0，-1，0，-1】
        r += 1
        
        while count == 0 {
            if r - l < length {
                length = r - l
                start = l
            }
            if target[ss[l]] == 0 {
                count += 1
            }
            target[ss[l]] += 1
            l += 1
        }
    }
    
    if length > slen {
        return ""
    }
    
    let index1 = s.index(s.startIndex, offsetBy: start)
    let index2 = s.index(s.startIndex, offsetBy: start + length)
    let range = index1..<index2
    return String(s[range])
}

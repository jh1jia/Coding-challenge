/*
 Given two strings s and t, determine if they are isomorphic. Two strings are isomorphic if the characters in s can be replaced to get t.
 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.
 
 Example 1:
 Input: s = "egg", t = "add"
 Output: true
 Example 2:
 Input: s = "foo", t = "bar"
 Output: false
 Example 3:
 Input: s = "paper", t = "title"
 Output: true
 Note: You may assume both s and t have the same length.
 
 Time Complexity: O(n), Space Complexity: O(n)
*/

func isIsomorphic(s: String, _ t: String) -> Bool {
    
    let sChars = Array(s)
    let tChars = Array(t)
    
    var stDict = [Character: Character]()
    var tsDict = [Character: Character]()
    
    guard sChars.count == tChars.count else {
        return false
    }
    
    for i in 0..<sChars.count {
        let sCurrent = sChars[i]
        let tCurrent = tChars[i]
        
        if stDict[sCurrent] == nil && tsDict[tCurrent] == nil {
            stDict[sCurrent] = tCurrent
            tsDict[tCurrent] = sCurrent
        } else if stDict[sCurrent] != tCurrent || tsDict[tCurrent] != sCurrent {
            return false
        }
    }
    return true
}

// eg "ab" "aa"

/***
 Given a pattern and a string str, find if str follows the same pattern.
 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.
 Example 1:
 Input: pattern = "abba", str = "dog cat cat dog"
 Output: true
 Example 2:
 Input:pattern = "abba", str = "dog cat cat fish"
 Output: false
 Example 3:
 Input: pattern = "aaaa", str = "dog cat cat dog"
 Output: false
 Example 4:
 Input: pattern = "abba", str = "dog dog dog dog"
 Output: false
 
 Idea: Using two dictionarys to compare
 Time Complexity: O(n), Space Complexity: O(n)
*/

func wordPattern(_ pattern: String, _ str: String) -> Bool {
    
    let strs = str.split(separator: " ")
    let chars = Array(pattern)
    
    guard chars.count == strs.count else {
        return false
    }
    
    var charToWord = [Character: Substring]() // dictionary
    
    for (i, char) in chars.enumerated(){
        
        let word = strs[i]
        
        if let charWord = charToWord[char] {
            if charWord != word {
                return false
            }
        } else {
            if charToWord.values.contains(word) {
                return false
            } else {
                charToWord[char] = word
            }
        }
    }
    return true
}

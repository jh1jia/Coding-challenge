/*
 Given a word, you need to judge whether the usage of capitals in it is right or not.
 We define the usage of capitals in a word to be right when one of the following cases holds:
 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "leetcode".
 Only the first letter in this word is capital, like "Google".
 Otherwise, we define that this word doesn't use capitals in a right way.
 
 Example 1:
 Input: "USA"
 Output: True
 
 Example 2:
 Input: "FlaG"
 Output: False
 
 Note: The input will be a non-empty word consisting of uppercase and lowercase latin letters.
 
 Time Complexity: O(n), Space Complexity: O(1)
 */

func detectCapitalUse(_ word: String) -> Bool {
    var countCapital = 0, FirstUpperCased = false
    
    for char in word {
        if char.isUpperCased() {
            countCapital += 1
        }
    }
    if let firstChar = word.first {
        FirstUpperCased = firstChar.isUpperCased()
    }
    return countCapital == 0 || (countCapital == 1 && FirstUpperCased)
        || countCapital == word.count
}

fileprivate extension Character {
    func isUpperCased() -> Bool {
        return String(self) == String(self).uppercased()
    }
}

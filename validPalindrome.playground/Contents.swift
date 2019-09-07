/*
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
 Note: For the purpose of this problem, we define empty string as valid palindrome.
 Example 1:
 Input: "A man, a plan, a canal: Panama"
 Output: true
 Example 2:
 Input: "race a car"
 Output: false
 
 Time Complexity: O(n), Space Complexity: O(n)
*/

func isAlpha(_ char: Character) -> Bool {
    switch char {
    case "a"..."z":
        return true
    case "A"..."Z":
        return true
    default:
        return false
    }
}

func isPalindrome(_ s: String) -> Bool {
    var i = 0, j = s.count - 1
    let chars = Array(s)
    while i < j {
        while !isAlpha(chars[i]) && i < j {
            i += 1
        }
        while !isAlpha(chars[j]) && i < j {
            j -= 1
        }
        if chars[i] != chars[j] {
            return false
        } else {
            i += 1
            j -= 1
        }
    }
    return true
}

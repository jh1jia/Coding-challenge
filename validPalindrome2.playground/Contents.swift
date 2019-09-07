/*
 Given a non-empty string s, you may delete at most one character. Judge whether you can make it a palindrome.
 Example 1:
 Input: "aba"
 Output: True
 Example 2:
 Input: "abca"
 Output: True
 Explanation: You could delete the character 'c'.
 Note: The string will only contain lowercase characters a-z. The maximum length of the string is 50000.
 Time Complexity: O(n), Space Complexity: O(n)
*/

func validPalindrome(_ s: String) -> Bool {
    let array = Array(s)
    return isPalindrome(array, 0, array.count - 1)
}

func isPalindrome(_ array: [Character], _ i: Int, _ j: Int, Removed: Bool = false) -> Bool {
    var i = i, j = j
    while i < j {
        if array[i] != array[j] {
            if Removed {
                return false
            } else {
                return isPalindrome(array, i + 1, j, Removed: true) ||
                    isPalindrome(array, i, j - 1, Removed: true)
            }
        } else {
            i += 1
            j -= 1
        }
    }
    return true
}

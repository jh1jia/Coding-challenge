/***
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 An input string is valid if:
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Note that an empty string is also considered valid.
 
 Example 1:
 Input: "()"
 Output: true
 Example 2:
 
 Input: "()[]{}"
 Output: true
 
 Example 3:
 Input: "(]"
 Output: false
 Example 4:
 
 Input: "([)]"
 Output: false
 Example 5:
 
 Input: "{[]}"
 Output: true
 
 Time Complexity: O(n), Space Complexity: O(n)
*/

func isValid(_ s: String) -> Bool {
    
    var stack = [Character]()
    
    for char in Array(s) {
        if char == "(" || char == "[" || char == "{" {
            stack.append(char)
        } else if char == ")" {
            guard stack.count != 0 && stack.removeLast() == "(" else {
                return false
            }
        } else if char == "]" {
            guard stack.count != 0 && stack.removeLast() == "[" else {
                return false
            }
        } else if char == "}" {
            guard stack.count != 0 && stack.removeLast() == "{" else {
                return false
            }
        }
    }
    return stack.isEmpty
}


/*
class Solution {
    
    public struct Stack{
        private var storage: [Character] = []
        mutating func push(_ char: Character){
            storage.append(char)
        }
        mutating func pop() -> Character? {
            return storage.popLast()
        }
        func peek() -> Character? {
            return storage.last
        }
        var isEmpty: Bool {
            return peek() == nil
        }
    }
    
    func isValid(_ s: String) -> Bool {
        var stack = Stack()
        
        for char in s{
            if char == "(" {
                stack.push(char)
            } else if char == ")"{
                if stack.isEmpty {
                    return false
                } else {
                    stack.pop()
                }
            }
        }
        return stack.isEmpty
    }
    
}
*/

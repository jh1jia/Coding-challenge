/**
 Given a positive integer n, find the least number of perfect square numbers (for example, 1, 4, 9, 16, ...) which sum to n.
 Example 1:
 Input: n = 12
 Output: 3
 Explanation: 12 = 4 + 4 + 4.
 Example 2:
 Input: n = 13
 Output: 2
 Explanation: 13 = 4 + 9.
 Idea: Dynamic Programming, transition function: nums[i] = min(nums[i], nums[i - j * j] + 1)
 Time Complexity: O(n^2), Space Complexity: O(n)
*/

func numSquares(n: Int) -> Int {
    guard n > 0 else {
        return 0
    }
    
    var leastNums = Array(repeating: Int.max, count: n+1)
    leastNums[0] = 0
    
    for i in 1...n {
        for j in 1...i  {
            if j * j > i {
                break
            }
            leastNums[i] = min(leastNums[i], leastNums[i - j * j] + 1)
        }
    }
    return leastNums[n]
}

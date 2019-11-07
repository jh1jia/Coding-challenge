// Time Complexity: O(n), Space Complexity: O(1)

class Solution {
    
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { num in num != val }
        return nums.count
    }
}

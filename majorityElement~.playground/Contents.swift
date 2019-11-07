class Solution {
    
    func majorityElement(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort { $0 < $1 }
        return nums[nums.count / 2]
    }
    
}

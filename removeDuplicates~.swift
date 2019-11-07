class Solution {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2{
            return nums.count
        }
        var count = 1
        for i in 1..<nums.count{
            if nums[i] != nums[i-1]{
                nums[count] = nums[i]
                count += 1
            }
        }
        return count
    }
}

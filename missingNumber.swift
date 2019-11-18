class Solution {
    
    func missingNumber(_ nums: [Int]) -> Int {
        var xor = 0
        var n = nums.count
        for i in 0..<n {
            xor ^= i ^ nums[i]
        }
        return xor ^ nums.count
    }
}

// The basic idea is to use XOR operation. We all know that a^b^b =a, which means two xor operations with the same number will eliminate the number and reveal the original number.

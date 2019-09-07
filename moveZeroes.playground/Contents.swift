/*
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 Example:
 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 Note:
 You must do this in-place without making a copy of the array.
 Minimize the total number of operations.
 
 Time Complexity: O(n), Space Complexity: O(1)
*/

func moveZeroes(_ nums: inout [Int]) {
    var index = 0
    
    for (_, num) in nums.enumerated() {
        if num != 0 {
            nums[index] = num
            index += 1
        }
    }
    while index < nums.count {
        nums[index] = 0
        index += 1
    }
}

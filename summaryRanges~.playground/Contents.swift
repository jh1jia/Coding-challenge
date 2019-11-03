/*
 Given a sorted integer array without duplicates, return the summary of its ranges.
 Example 1:
 Input:  [0,1,2,4,5,7]
 Output: ["0->2","4->5","7"]
 Explanation: 0,1,2 form a continuous range; 4,5 form a continuous range.
 Example 2:
 Input:  [0,2,3,4,6,8,9]
 Output: ["0","2->4","6","8->9"]
 Explanation: 2,3,4 form a continuous range; 8,9 form a continuous range.
 
 Idea: Traverse the array and build string when num[i] != num[i - 1] + 1
 Time Complexity: O(n), Space Complexity: O(n)
*/

func summaryRanges(nums: [Int]) -> [String] {
    
    let count = nums.count
    guard count > 0 else {
        return []
    }
    var str = ""
    var start = 0
    var result = [String]()
    
    for i in 0...count {
        if (i > 0 && nums[i] != nums[i - 1] + 1) || (i == nums.count) {
            str = "\(nums[start])"
            if i - 1 != start {
                str += "->\(nums[i - 1])"
            }
            result.append(str)
            start = i
        }
    }
    return result
}

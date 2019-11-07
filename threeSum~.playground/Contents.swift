/* Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
 The solution set must not contain duplicate triplets.
 Example:
 Given array nums = [-1, 0, 1, 2, -1, -4],
 A solution set is:
 [ [-1, 0, 1], [-1, -1, 2] ]
 Idea: Sort the array, and traverse it, increment left or decrease right, check if their sum is greater or not than the target
 Time Complexity: O(n^2), Space Complexity: O(nC3)
*/

func threeSum(nums: [Int]) -> [[Int]] {
    var nums = nums.sorted(by: <)
    var res = [[Int]]()
    if nums.count <= 2 {
        return res
    }
    for i in 0...nums.count - 3 {
        
        if nums[i] != nums[i - 1] || i == 0 {
            
            let remain = -nums[i]
            var left = i + 1
            var right = nums.count - 1
            
            while left < right {
                if nums[left] + nums[right] == remain {
                    var temp = [Int]()
                    temp.append(nums[i])
                    temp.append(nums[left])
                    temp.append(nums[right])
                    res.append(temp)
                    repeat {
                        left += 1
                    } while (left < right && nums[left] == nums[left - 1])
                    repeat {
                        right -= 1
                    } while (left < right && nums[right] == nums[right + 1])
                }
                else if nums[left] + nums[right] < remain {
                    repeat {
                        left += 1
                    } while (left < right && nums[left] == nums[left - 1])
                }
                else {
                    repeat {
                        right -= 1
                    } while (left < right && nums[right] == nums[right + 1])
                }
            }
        }
    }
    return res
}

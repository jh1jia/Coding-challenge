/* Given two arrays, write a function to compute their intersection.
 
 Example 1:
 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2]
 
 Example 2:
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [9,4]
 
 Note:
 Each element in the result must be unique.
 The result can be in any order.
 
 Time Complexity: O(n), Space Complexity: O(n)
 */

func intersection(nums1: [Int], _ nums2: [Int]) -> [Int] {
    return Array(Set(nums1).intersection(Set(nums2)))
}

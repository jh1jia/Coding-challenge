/**
 Given an integer, write a function to determine if it is a power of two.
 Example 1:
 Input: 1
 Output: true
 Explanation: 20 = 1
 Example 2:
 Input: 16
 Output: true
 Explanation: 24 = 16
 Example 3:
 Input: 218
 Output: false
 
 Time Complexity: O(1), Space Complexity: O(1)
*/

func isPowerOfTwo(n: Int) -> Bool {
    guard n > 0 else {
        return false
    }
    return n & (n - 1) == 0
}



/*
 n & (n - 1) == 0 trick:
 
 if n = 3 or any other number which is not power of 2
 (n = 3, So (n-1) = 2)
 3 :- 0000 0011 2 :- 0000 0010
 than AND operation :- 0000 0010
 
 if n = 2 or any other number which is power of two
 (n = 2 so (n-1) = 1) 2 :- 0000 0010 1 :- 0000 0001
 than AND Operation :- 0000 0000
 
 So if the number is power of two it always returns 0.
*/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var arr = Array(String(x))
        var i = 0, j = arr.count - 1
        while(i<j){
            if arr[i] != arr[j]{
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}

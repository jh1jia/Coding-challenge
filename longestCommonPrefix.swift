class Solution {
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count != 0 else{
            return ""
        }
        return longestCommonPre(strs, 0, strs.count - 1)
    }
    
    private func longestCommonPre(_ strs:[String], _ l: Int, _ r: Int) -> String{
        if(l == r){
            return strs[l]
        }else{
            var mid = (l+r)/2
            var left = longestCommonPre(strs, l, mid)
            var right = longestCommonPre(strs, mid+1, r)
            return commonPre(left, right)
        }
    }
    
    private func commonPre(_ left: String, _ right: String) -> String {
        var minLen = min(left.count, right.count)
        var leftArr = Array(left)
        var rightArr = Array(right)
        for i in 0..<minLen {
            if (leftArr[i] != rightArr[i]){
                return String(left.prefix(i))
            }
        }
        return String(left.prefix(minLen))
    }
}

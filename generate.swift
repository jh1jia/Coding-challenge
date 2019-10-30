// Given a non-negative integer numRows, generate the first numRows of Pascal's triangle.

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        
        guard numRows != 0 else {return []}
        
        var res = [[1]]
        for i in 1..<numRows {
            res.append(zip(res.last! + [0], [0] + res.last!).map(+))
            print(res)
        }
        return res
    }
}

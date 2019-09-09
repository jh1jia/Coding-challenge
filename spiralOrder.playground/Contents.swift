/**
 Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.
 Example 1:
 Input:
 [
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
 ]
 Output: [1,2,3,6,9,8,7,4,5]
 
 Example 2:
 Input:
 [
 [1, 2, 3, 4],
 [5, 6, 7, 8],
 [9,10,11,12]
 ]
 Output: [1,2,3,4,8,12,11,10,9,5,6,7]
 
 Time Complexity: O(n^2), Space Complexity: O(1)
*/

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    
    var result = [Int]()
    
    guard matrix.count != 0 else {
        return result
    }
    
    var x = 0, endX = matrix.count - 1 // eg 2
    var y = 0, endY = matrix[0].count - 1  // eg 3
    
    while true {
        for i in y...endY { // top
            result.append(matrix[x][i])
        }
        x += 1
        if x > endX {
            break
        }
        
        for i in x...endX { // right
            result.append(matrix[i][endY])
        }
        endY -= 1
        if y > endY {
            break
        }
        
        for i in stride(from: endY, through: y, by: -1) { // bottom
            result.append(matrix[endX][i])
        }
        endX -= 1
        if x > endX {
            break
        }
        
        for i in stride(from: endX, through: x, by: -1) {  // left
            result.append(matrix[i][y])
        }
        y += 1
        if y > endY {
            break
        }
    }
    return result
}

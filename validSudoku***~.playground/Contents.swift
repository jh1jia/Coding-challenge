/***
 https://leetcode.com/problems/valid-sudoku/
 Determine if a 9x9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:
 Each row must contain the digits 1-9 without repetition.
 Each column must contain the digits 1-9 without repetition.
 Each of the 9 3x3 sub-boxes of the grid must contain the digits 1-9 without repetition.
 The Sudoku board could be partially filled, where empty cells are filled with the character '.'.
 Example 1: Input:
 [
 ["5","3",".",".","7",".",".",".","."],
 ["6",".",".","1","9","5",".",".","."],
 [".","9","8",".",".",".",".","6","."],
 ["8",".",".",".","6",".",".",".","3"],
 ["4",".",".","8",".","3",".",".","1"],
 ["7",".",".",".","2",".",".",".","6"],
 [".","6",".",".",".",".","2","8","."],
 [".",".",".","4","1","9",".",".","5"],
 [".",".",".",".","8",".",".","7","9"]
 ]
 Output: true
 Example 2: Input:
 [
 ["8","3",".",".","7",".",".",".","."],
 ["6",".",".","1","9","5",".",".","."],
 [".","9","8",".",".",".",".","6","."],
 ["8",".",".",".","6",".",".",".","3"],
 ["4",".",".","8",".","3",".",".","1"],
 ["7",".",".",".","2",".",".",".","6"],
 [".","6",".",".",".",".","2","8","."],
 [".",".",".","4","1","9",".",".","5"],
 [".",".",".",".","8",".",".","7","9"]
 ]
 Output: false
 Explanation: Same as Example 1, except with the 5 in the top left corner being
 modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.
 Note:
 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.
 The given board contain only digits 1-9 and the character '.'.
 The given board size is always 9x9.
 
 Idea: Check rows, columns, single square separately
 Time Complexity: O(n^2), Space Complexity: O(n)
*/

private func isValidChar(_ char: Character, _ visited: inout [Bool]) -> Bool {
    let current = String(char)
    if current != "." {
        if let num = Int(current) {
            if num < 1 || num > 9 || visited[num - 1] {
                return false
            } else {
                visited[num - 1] = true
            }
        } else {
            return false
        }
    }
    return true
}

let size = 9

private func isRowValid(_ board: [[Character]]) -> Bool {
    var visited = [Bool]()
    for i in 0..<size {
        visited = Array(repeating: false, count: size)
        for j in 0..<size {
            if !isValidChar(board[i][j], &visited) {
                return false
            }
        }
    }
    return true
}

private func isColValid(_ board: [[Character]]) -> Bool {
    var visited = [Bool]()
    for i in 0..<size {
        visited = Array(repeating: false, count: size)
        for j in 0..<size {
            if !isValidChar(board[j][i], &visited) {
                return false
            }
        }
    }
    return true
}

private func isSquareValid(_ board: [[Character]]) -> Bool {
    var visited = [Bool]()
    for i in stride(from: 0, to: size, by: 3){
        for j in stride(from: 0, to: size, by: 3){
            visited = Array(repeating: false, count: size)
            for m in i..<i + 3 {
                for n in j..<j + 3 {
                    if !isValidChar(board[m][n], &visited) {
                        return false
                    }
                }
            }
        }
    }
    return true
}

func isValidSudoku(board: [[Character]]) -> Bool {
    return isRowValid(board) && isColValid(board) && isSquareValid(board)
}

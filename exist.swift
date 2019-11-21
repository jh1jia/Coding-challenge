class Solution {
    
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        guard board.count > 0 && board[0].count > 0 else {
            return false
        }
        var visited = [(Int,Int)]()
        for i in 0..<board.count {
            for j in 0..<board[0].count {
                if dfs(board,i,j,word, &visited) {
                    return true
                }
            }
        }
        return false
    }
    
    func dfs(_ board: [[Character]], _ i: Int, _ j: Int, _ word: String, _ visited: inout [(Int,Int)]) -> Bool {
        
        guard word.count != 0 else { return true }
        
        if i<0 || i >= board.count || j < 0 || j >= board[0].count ||
            Array(word)[0] != board[i][j] || visited.contains(where: {$0 == (i,j)}) {
            return false
        }
        visited.append((i,j))
        let startIndex = word.index(word.startIndex, offsetBy: 1)
        let newWord = String(word[startIndex...])
        
        var check = dfs(board, i-1, j, newWord, &visited) ||
            dfs(board, i+1, j, newWord, &visited) ||
            dfs(board, i, j-1, newWord, &visited) ||
            dfs(board, i, j+1, newWord, &visited)
        if !check {
            visited.removeLast()
        }
        return check
    }
}

/*
 Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.
 
 Example 1:
 Input:
 11110
 11010
 11000
 00000
 Output: 1
 
 Example 2:
 Input:
 11000
 11000
 00100
 00011
 Output: 3
 
 Idea: Depth-first Search, go four directions
 Time Complexity: O(mn), Space Complexity: O(1)
*/

func numIslands(grid: [[Character]]) -> Int {
    
    guard grid.count > 0 && grid[0].count > 0 else {
        return 0 // check if grid is empty "[[]]"
    }
    
    var grid = grid
    let m = grid.count
    let n = grid[0].count
    var count = 0
    
    for i in 0..<m {
        for j in 0..<n {
            if String(grid[i][j]) == "1" {
                count += 1
                dfs(&grid, m, n, i, j)
            }
        }
    }
    return count
}

private func dfs(_ grid: inout [[Character]], _ m: Int, _ n: Int, _ i: Int, _ j: Int) {
    guard i >= 0 && i < m && j >= 0 && j < n && String(grid[i][j]) == "1" else {
        return
    }
    grid[i][j] = Character("0")
    dfs(&grid, m, n, i + 1, j)
    dfs(&grid, m, n, i - 1, j)
    dfs(&grid, m, n, i, j + 1)
    dfs(&grid, m, n, i, j - 1)
}

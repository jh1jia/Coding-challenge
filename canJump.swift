func canJump(_ nums: [Int]) -> Bool {
    if nums.count <= 1 {
        return true
    }
    
    var maxDistance = 0
    for (index, value) in nums.enumerated() {
        if maxDistance < index {
            return false
        }
        
        maxDistance = max(maxDistance, index + value)
    }
    
    return true
}

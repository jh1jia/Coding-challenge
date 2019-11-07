class Solution {
    func reverse(_ x: Int) -> Int {
        var res = 0
        var x = x
        while(x != 0){
            res = res * 10 + x % 10
            x = x / 10
        }
        if(res < Int32.min || res > Int32.max) {
            return 0
        }
        return res
    }
}

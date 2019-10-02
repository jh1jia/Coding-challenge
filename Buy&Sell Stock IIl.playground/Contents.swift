/************ (hard)
 Say you have an array for which the ith element is the price of a given stock on day i.
 Design an algorithm to find the maximum profit. You may complete at most two transactions.
 Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).
 
 Example 1:
 Input: [3,3,5,0,0,3,1,4]
 Output: 6
 Explanation: Buy on day 4 (price = 0) and sell on day 6 (price = 3), profit = 3-0 = 3.
 Then buy on day 7 (price = 1) and sell on day 8 (price = 4), profit = 4-1 = 3.
 
 Example 2:
 Input: [1,2,3,4,5]
 Output: 4
 Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are
 engaging multiple transactions at the same time. You must sell before buying again.
 
 Example 3:
 Input: [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transaction is done, i.e. max profit = 0.
 
 Time Complexity: O(n), Space Complexity: O(n)
 */

func maxProfit(_ prices: [Int]) -> Int {
    
    let len = prices.count
    if (len < 2){
        return 0
    }
    
    var preProfit = Array(repeating: 0, count: len)
    var postProfit = Array(repeating: 0, count: len)

    var curMin = prices[0]
    for i in 1..<len {
        curMin = min(curMin, prices[i]);
        preProfit[i] = max(preProfit[i - 1], prices[i] - curMin)//第i天或第i天之前卖出最大收益
    }
    
    var curMax = prices[len - 1]
    for i in (0...len-2).reversed(){
        curMax = max(curMax, prices[i])
        postProfit[i] = max(postProfit[i + 1], curMax - prices[i])//第i天或第i天后任意天买入后的一次交易最大收益*
    }
    
    var maxProfit = 0
    for i in 0..<len{
        maxProfit = max(maxProfit, preProfit[i] + postProfit[i])
    }
    return maxProfit
}

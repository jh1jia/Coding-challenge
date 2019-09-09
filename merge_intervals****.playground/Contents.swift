/***
 Given a collection of intervals, merge all overlapping intervals.
 Example 1:
 Input: [[1,3],[2,6],[8,10],[15,18]]
 Output: [[1,6],[8,10],[15,18]]
 Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
 Example 2:
 Input: [[1,4],[4,5]]
 Output: [[1,5]]
 Explanation: Intervals [1,4] and [4,5] are considered overlapping.
 
 Idea: Sort the intervals and then append them one by one
 Time Complexity: O(nlogn), Space Complexity: O(n)
*/

public class Interval {
    public var start: Int
    public var end: Int
    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}

func merge(intervals: [Interval]) -> [Interval] {
    
    var result = [Interval]()
    
    let intervals = intervals.sorted {
        if $0.start != $1.start {
            return $0.start < $1.start
        } else {
            return $0.end < $1.end
        }
    }
    for interval in intervals {
        guard let last = result.last else {
            result.append(interval)
            continue
        }
        
        if last.end < interval.start {
            result.append(interval)
        } else {
            last.end = max(last.end, interval.end)
        }
    }
    return result
}

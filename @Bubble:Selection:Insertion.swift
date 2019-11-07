//
//  BubbleSort.swift
//  Created by Junhao on 2019-10-03.
//

/*
 Bubble sort has a best time complexity of O(n) if it’s already sorted, and a worst and average time complexity of O(n²), making it one of the least appealing sorts in the known universe.*/

public func bubbleSort<Element>(_ array: inout [Element]) where Element: Comparable {
    
    guard array.count >= 2 else { return }
    
    for end in (1..<array.count).reversed() {
        
        var swapped = false
        for current in 0..<end {
            if array[current] > array[current + 1] {
                array.swapAt(current, current + 1)
                swapped = true
            }
        }
        if !swapped {
            return
        }
    }
}

/* Just like bubble sort, selection sort has a best, worst and average time complexity of O(n²), which is fairly dismal. It’s a simple one to understand, though, and it does perform better than bubble sort!*/

public func selectionSort<Element>(_ array: inout [Element]) where Element: Comparable {
    guard array.count >= 2 else { return }
    
    for current in 0..<(array.count - 1) {
        var lowest = current
        
        for other in (current + 1)..<array.count {
            if array[lowest] > array[other] {
                lowest = other
            }
        }
        if lowest != current {
            array.swapAt(lowest, current)
        }
    }
}

/* Like bubble sort and selection sort, insertion sort has an average time complexity of O(n²), but the performance of insertion sort can vary. The more the data is already sorted, the less work it needs to do. Insertion sort has a best time complexity of O(n) if the data is already sorted. */


public func insertionSort<Element>(_ array: inout [Element]) where Element: Comparable {
    guard array.count >= 2 else { return }
    
    for current in 1..<array.count {
        
        for shifting in (1...current).reversed() {
            
            if array[shifting] < array[shifting - 1] {
                array.swapAt(shifting, shifting - 1)
            } else {
                break
            }
        }
    }
}

import UIKit

var greeting = "Maximum Sum Subarray of Size K (easy)"
print(greeting)
print()

func findMax(arr: [Int]) -> Int {
    var max = arr[0]
    
    for i in arr {
        max = max > i ? max : i
    }
    return max
}

func maxSubArrOfSizeK(k: Int, array: [Int]) -> Int {
    var result = 0
    
    var subArrSum = [Int]()
    
    var windowStart = 0
    var windowSum = 0
    
    for windowEnd in 0...(array.count - 1) {
        
        windowSum += array[windowEnd]
        
        if windowEnd >= k - 1 {
            subArrSum.append(windowSum)
            windowSum -= array[windowStart]
            windowStart += 1
        }
    }
    
    print(subArrSum)
    subArrSum.sort(by: >)
    print(subArrSum.first!)
    return findMax(arr: subArrSum)
}

maxSubArrOfSizeK(k: 3, array: [2, 1, 5, 1, 3, 2])


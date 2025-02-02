import UIKit

var greeting = "Introduction"


func findAverageSubArrays(_ nums: [Int], k: Int) -> [Double] {
    var result = [Double]()
    
    for i in 0...(nums.count - k) {
        var sum = 0
        
        for j in i..<(i + k) {
            sum += nums[j]
        }
        result.append(Double(sum) / Double(k))
    }
    return result
}

let result = findAverageSubArrays([1, 3, 2, 6, -1, 4, 1, 8, 2], k: 5)
print("Average Size: ", result, "First method")


// MARK: Second Method - optimized way
func findAverageSubArrays(arr: [Int], k: Int) -> [Double] {
    var result = [Double]()
    
    var windowSum = 0.0
    var windowStart = 0
    
    for windowEnd in 0...(arr.count - 1) {
        
        windowSum += Double(arr[windowEnd]) // add the next element
        
        // slide the window , we don't need to slide if we've not hit the required window size of K
        if windowEnd >= k - 1 {
            result.append(windowSum / Double(k))
            windowSum -= Double(arr[windowStart])
            windowStart += 1
        }
    }
    
    print("Average result:", result, "Second Method")
    return  result
}


findAverageSubArrays(arr: [1, 3, 2, 6, -1, 4, 1, 8, 2], k: 5)


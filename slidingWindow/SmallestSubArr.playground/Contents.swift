import UIKit

var greeting = "Smallest Subarray with a given sum (easy)"

print(greeting)


func smallestSubarrayWithGivenSum(_ arr: [Int], _ S: Int) -> Int {    
    var windowStart = 0
    var smallestLength = Int.max
    var slSum = 0
    
    for windowEnd in 0...(arr.count - 1) {
        slSum += arr[windowEnd]
        
        while slSum >= S {
           
            smallestLength = min(smallestLength, windowEnd - windowStart + 1)
            slSum -= arr[windowStart]
            windowStart += 1
        }
    }
    
    if smallestLength == Int.max {
        return 0
    }
    
    return smallestLength
}
 smallestSubarrayWithGivenSum([2, 1, 5, 2, 3, 2], 7)


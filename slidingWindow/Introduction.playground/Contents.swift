import UIKit

var greeting = "Hello, playground"


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
print(result)

func findAverageSubArrays(arr: [Int], k: Int) -> [Double] {
    return  []
}

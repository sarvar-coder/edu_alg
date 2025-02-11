import UIKit

var greeting = "Pair with target sum "

func pairWithTargetSum(array: [Int], target: Int) -> [Int] {
    
    var indices = [Int]()
    var left = 0
    var right = array.count - 1
    
    while left < right {
        if array[left] + array[right] == target {
            indices.append(contentsOf: [left, right])
            right -= 1
            left += 1
        } else if array[left] + array[right] > target {
            right -= 1
        } else {
            left += 1
        }
    }
        
    return indices
}

let result = pairWithTargetSum(array: [2, 5, 9, 11], target: 11)
print(result)

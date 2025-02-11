import UIKit

var greeting = "Hello, playground"

func removeDuplicate(array: [Int]) -> Int {
    var tempArr = array
    
    var first = 0
    var second = 1
    var i = 1
    
    while i < tempArr.count  {
        if tempArr[first] == tempArr[second] {
            tempArr.remove(at: first)
            tempArr.remove(at: second)
            first += 1
            second += 1
        }
        first = second
        second += 1
       
        i += 1
    }
    
    
    return tempArr.count
}

removeDuplicate(array: [2, 3, 3, 3, 6, 9, 9])
removeDuplicate(array: [2, 2, 2, 11])

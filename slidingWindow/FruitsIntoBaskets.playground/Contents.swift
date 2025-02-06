import UIKit

var greeting = "Fruits Into Baskets (medium)"

func fruitsIntoBaskets(fruits: [String]) -> Int {
    
    var maxLength = 0
    
    var fruitType = [String: Int]()
    
    var windowStart = 0
    
    for windowEnd in 0...(fruits.count - 1) {
        let rightfruit = fruits[windowEnd]
        
        if !fruitType.keys.contains(rightfruit) {
            
            fruitType[rightfruit] = 0
            print(fruitType, 1)
        }
        
        fruitType[rightfruit]! += 1
        print(fruitType, 2)
        
        while fruitType.keys.count > 2 {
            let leftFruit = fruits[windowStart]
            print(leftFruit, "get third type")
            fruitType[leftFruit]! -= 1
            print(fruitType)
            
            if fruitType[leftFruit] == 0 {
                fruitType.removeValue(forKey: leftFruit)
                print(fruitType, "delete third type")
            }
            
            windowStart += 1
        }
        
        maxLength = max(maxLength, windowEnd - windowStart + 1)
    }
    
   
    return maxLength
}
fruitsIntoBaskets(fruits: ["A", "B", "C", "B", "B", "C"])


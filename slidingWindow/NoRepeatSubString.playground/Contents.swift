import UIKit

var greeting = "No Repeat Substring (Hard)"


func noRepeatSubstring(_ s: String) -> Int {
    
    var container = [String]()
    
    var windowStart = 0
    var maxLeng = 0
    
    var substring = [String: Int]()
    
    s.forEach { container.append(String($0)) }
    
    for windowEnd in 0...(container.count - 1) {
        let rightChar = container[windowEnd]
        
        if !substring.keys.contains(rightChar) {
            substring[rightChar] = 0
        }
        substring[rightChar]! += 1
    
        while substring.keys.count < substring.values.reduce(0, +) {
            let leftChar = container[windowStart]
            
            substring[leftChar]! -= 1
            
            if substring[leftChar] ==  0 {
                substring.removeValue(forKey: leftChar)
            }
            
            windowStart += 1
        }
        
        maxLeng = max(maxLeng, windowEnd - windowStart + 1)
        
    }
    
    
    return maxLeng
}
noRepeatSubstring("aabbcc")

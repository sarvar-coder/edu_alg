import UIKit

var greeting = "Longest Substring with K Distinct Characters (medium)"
print(greeting)
print()

let givenStr = "araaci"

func findLongestSubString(_ k: Int, _ string: String) -> Int {
    
    var windowStart = 0
    var maxLength = 0
    var charFrequency = [Character: Int]()
    
    var tempStr = string.map { $0 }
    print(tempStr)
    
    
    for windowEnd in 0...(tempStr.count - 1) {

        let rightChar = tempStr[windowEnd]
        
        if !charFrequency.keys.contains(rightChar) {
            print(rightChar, "right")
            charFrequency[rightChar] = 0
        }
        print(rightChar)
        charFrequency[rightChar]! += 1
        print(charFrequency)
        while charFrequency.keys.count > k {
            let leftChar = tempStr[windowStart]
            
            charFrequency[leftChar]! -= 1
            
            if charFrequency[leftChar] == 0 {
                charFrequency.removeValue(forKey: leftChar)
            }
            windowStart += 1 // shrink the window
        }
        
        maxLength = max(maxLength, windowEnd - windowStart + 1)
        print(maxLength)
    }
    
    
    return maxLength
}


findLongestSubString(2, "araaci")

import UIKit

var greeting = "Longest Subarray with Ones after Replacement (hard)"


func lenghtOfLongestSubArray(_ array: [Int], _ K: Int) -> Int {
    
    var windowStart = 0, maxLen = 0, maxRepeatIntCount = 0
    var frequencyMap = [Int: Int]()
    
    for windowEnd in 0...(array.count - 1) {
        let rightChar = array[windowEnd]
        
        if !frequencyMap.keys.contains(rightChar) {
            frequencyMap[rightChar] =  0
        }
        
        frequencyMap[rightChar]! += 1
        
        maxRepeatIntCount = max(maxRepeatIntCount, frequencyMap[rightChar]!)
        
        while (windowEnd - windowStart + 1 - maxRepeatIntCount) > K {
            let leftChar = array[windowStart]
            
            
            frequencyMap[leftChar]! -= 1
            
            if frequencyMap[leftChar] == 0 {
                frequencyMap.removeValue(forKey: leftChar)
            }
            
            windowStart += 1
        }
        
        maxLen = max(maxLen, windowEnd - windowStart + 1)
    }
    
    
    return maxLen
}

lenghtOfLongestSubArray([0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1], 2)
lenghtOfLongestSubArray([0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1], 3)

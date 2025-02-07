import UIKit

var greeting = "Longest Substring with Same Letters after Replacement (hard)"

var problemStatement = """
Given a string with lowercase letters only, if you are allowed to replace no more than ‘k’ letters with any letter, find the length of the longest substring having the same letters after replacement.
"""

func lengthOfLongestSubstring(_ str: String, _ k: Int) -> Int {
  
    var windowStart = 0, maxLen = 0, maxRepeatLetterCount = 0
//    var maxLen = 0
//    var maxRepeatLetterCount = 0
    
    var charFrequency = [String: Int]()
    var strArr = str.map { String($0) }
    
    for windowEnd in 0...(strArr.count - 1) {
        let rightChar = strArr[windowEnd]
        
        if !charFrequency.keys.contains(rightChar) {
            charFrequency[rightChar] = 0
        }
        
        charFrequency[rightChar]! += 1
        
        maxRepeatLetterCount = max(maxRepeatLetterCount, charFrequency[rightChar]!)
        
        
        if (windowEnd - windowStart + 1 - maxRepeatLetterCount) > k {
            
            let leftChar = strArr[windowStart]
            
            charFrequency[leftChar]! -= 1
            
            if charFrequency[leftChar] == 0 {
                charFrequency.removeValue(forKey: leftChar)
            }
            
            windowStart += 1
        }
        maxLen = max(maxLen, windowEnd - windowStart + 1)
    }
    
    
    return maxLen
}
lengthOfLongestSubstring("aabccbb", 2)
lengthOfLongestSubstring("abbcb", 1)
lengthOfLongestSubstring("abccde", 1)


import UIKit

var greeting = "String Anagrams"


func findStringAnagrams(_ string: String, _ pattern: String) -> [Int] {
    var resultIndexes = [Int]()
    
    var windowStart = 0, matched = 0
    
    var strArray = string.map { String($0) }
    
    var charFrequency = [String: Int]()

    pattern.forEach { charFrequency[String($0), default: 0] += 1 }
    
    for windowEnd in 0..<strArray.count {
        
        let rightChar = strArray[windowEnd]
        if charFrequency.keys.contains(rightChar) {
            charFrequency[rightChar]! -= 1
            if charFrequency[rightChar] == 0 {
                matched += 1
            }
        }
        if matched == charFrequency.count {
            resultIndexes.append(windowStart)
        }
        
        if windowEnd >= pattern.count - 1 {
            let leftchar = strArray[windowStart]
            windowStart += 1

            if charFrequency.keys.contains(leftchar) {
                if charFrequency[leftchar] == 0 {
                    matched -= 1
                }
                
                charFrequency[leftchar]! += 1
            }
        }
    }
    print(resultIndexes)
    return resultIndexes
}
findStringAnagrams("abbcabc", "abc")
//findStringAnagrams("ppqp", "pq")
 

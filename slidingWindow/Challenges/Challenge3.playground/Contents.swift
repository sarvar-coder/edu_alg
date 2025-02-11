import UIKit

var greeting = "Smallest Window containing Substring (hard) "


func finsSubstring(str: String, pattern: String) -> String {
    var substring = ""
    
    var windowStart = 0, matched = 0
    
    var charFrequency = [String: Int]()
    
    var strArray = str.map { String($0) }
    
    pattern.forEach { charFrequency[String($0), default: 0] += 1 }
    
    for windowEnd in 0..<strArray.count {
        let rightChar = strArray[windowEnd]
        
        
    }
            
    
    
    
    
    return ""
}

import UIKit

var greeting = "Problem Challenge 1 - Permutation in a String (hard)"
"""
Izoh
soz bilan shu sozdan kichkina soz bolagi berilgan
masalan soz - "sdhgbcas"  soz bolagi "abc"
sozimizda soz bolagining kelishi mumkin bolgan har xil ketma ketligi  ketma ket takrorlansa biz true qaytaramiz.

abc
acb
bca
bac
cba
cab

soz bolagining kelishi mumkin bolgan ketma ketliklari
bunda kelib chiqadiki kelishi mumkin bolgan ketma ketliklari soz bolagidagi umumiy harflar sonining faktorialiga teng

"""

func findPermutation(_ str: String, _ pattern: String) -> Bool {
    
    var windowStart = 0, matched = 0
    
    var strArr = str.map { String($0) }
    
    var charFrequency = [String: Int]()
    
    for char in pattern {
        let str = String(char)
        if !charFrequency.keys.contains(str) {
            charFrequency[str] = 0
        }
        charFrequency[str]! += 1
    }
    
    for windowEnd in 0...(strArr.count - 1) {
        let rightChar = strArr[windowEnd]
        
        if charFrequency.keys.contains(rightChar) {
            charFrequency[rightChar]! -= 1
            if charFrequency[rightChar] == 0 {
                matched += 1
            }
        }
        
        if matched == charFrequency.count {
            return true
        }
        
        if windowEnd >= pattern.count - 1 {
            let leftChar = strArr[windowStart]
            
            windowStart += 1
            
            if charFrequency.keys.contains(leftChar) {
                if charFrequency[leftChar] == 0 {
                    matched -= 1
                }
                charFrequency[leftChar]! += 1
            }
        }
    }
    
    return false
}


func main() {
    print((findPermutation("oidbcaf", "abc")))
    print("\(findPermutation("odicf", "dc"))")
    print("\(findPermutation("bcdxabcdy", "bcdyabcdx"))")
    print("\(findPermutation("aaacb", "abc"))")
}

main()

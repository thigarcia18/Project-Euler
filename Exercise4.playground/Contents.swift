/*
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 
Find the largest palindrome made from the product of two 3-digit numbers.
*/

import UIKit

func searchLargestPalindrome() -> Int {
    var largest = 0
    
    for x in 100...999 {
        for y in 100...999 {
            let result = x * y
            
            if result > largest {
                let resultString = String(result)
                
                if resultString.count % 2 == 0 {
                    let prefix = resultString.prefix(resultString.count / 2)
                    let suffix = resultString.suffix(resultString.count / 2)
                    
                    if prefix == String(suffix.reversed()) {
                        largest = result
                    }
                }
            }
        }
    }
    
    return largest
}

print(searchLargestPalindrome())

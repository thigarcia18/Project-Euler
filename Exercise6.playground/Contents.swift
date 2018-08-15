/*
The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385
 
The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
 
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
*/

import UIKit

func calculateDifference() -> Int {
    var result1 = 0.0
    var result2 = 0.0
    var result = 0.0

    for i in 1...100 {
        result1 += pow(Double(i), 2)
        result2 += Double(i)
    }
    
    return Int(pow(result2, 2) - result1)
}

print(calculateDifference())

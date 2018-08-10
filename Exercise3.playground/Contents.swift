/*
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?
 */

import UIKit

let numbersArray = [2, 3, 5]
var largest = 0

func checkPrime(number: Int) -> Bool {
    var counter = 0
    
    for i in numbersArray {
        if number != i, number % i == 0 {
            counter += 1
        }
    }
    
    return counter > 0 ? false : true
}

func checkLargestPrime(number: Int) -> Int {
    var result = number
    var divideBy = 2
    
    repeat {
        let isPrime = checkPrime(number: divideBy)
        
        if isPrime, result % divideBy == 0 {
            result = result / divideBy
            
            if largest < divideBy {
                largest = divideBy
            }
            
            divideBy = 1
        }
        
        divideBy += 1
    } while result != 1
    
    return largest
}

print(checkLargestPrime(number: 600851475143))

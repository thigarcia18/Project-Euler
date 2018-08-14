/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 */

import UIKit

var found = false
var number = 0

func findSmallestDivisible() -> Int {
    while !found {
        number += 1
        
        for i in 1...20 {
            if number % i == 0 {
                found = true
            } else {
                found = false
                break
            }
        }
    }
    
    return number
}

print(findSmallestDivisible())

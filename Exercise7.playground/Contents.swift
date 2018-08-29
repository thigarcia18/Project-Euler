/*
 
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
What is the 10001st prime number?
 
*/

import UIKit

var numbersArray = [2, 3, 5]

func checkPrime(number: Int) -> Bool {
    var counter = 0
    
    for i in numbersArray {
        if number != i, number % i == 0 {
            counter += 1
        }
    }
    
    if counter == 0, numbersArray.contains(number) == false {
        numbersArray.append(number)
    }
    
    return counter > 0 ? false : true
}

func primePosition(position: Int) -> Int {
    var number = 1
    
    for _ in 1...position {
        repeat {
            number += 1
        } while checkPrime(number: number) == false
    }
    
    return number
}

print(primePosition(position: 10001))

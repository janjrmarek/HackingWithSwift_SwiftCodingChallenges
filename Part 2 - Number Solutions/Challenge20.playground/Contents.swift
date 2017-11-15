import UIKit

/*
 Challenge 20: Number is prime
 Difficulty: Tricky
 
 Write a function that accepts an integer as its parameter and returns true if the number is prime.
 
 Tip: A number is considered prime if it is greater than one and has no positive divisors other than 1 and itself.
 
 Sample input and output
 • The number 11 should return true.
 • The number 13 should return true.
 • The number 4 should return false.
 • The number 9 should return false.
 • The number 16777259 should return true.
*/

func numberIsPrime(number: Int) -> Bool {
    guard number >= 2 else { return false }
    guard number != 2 else { return true }
    for i in 2 ... Int(ceil(Double(number).squareRoot())) {
        if number % i == 0 {
            return false
        }
    }
    return true
}

// TESTING
assert(numberIsPrime(number: 11) == true, "Challenge 20 Failed")
assert(numberIsPrime(number: 13) == true, "Challenge 20 Failed")
assert(numberIsPrime(number: 4) == false, "Challenge 20 Failed")
assert(numberIsPrime(number: 9) == false, "Challenge 20 Failed")
assert(numberIsPrime(number: 16777259) == true, "Challenge 20 Failed")

print("Challenge Complete")




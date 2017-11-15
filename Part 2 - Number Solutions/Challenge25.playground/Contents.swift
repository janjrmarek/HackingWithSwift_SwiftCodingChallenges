import UIKit

/*
 Challenge 25: Calculate a square root by hand
 Difficulty: Taxing
 
 Write a function that returns the square root of a positive integer, rounded down to the nearest integer, without using sqrt().
 
 Sample input and output
 • The number 9 should return 3.
 • The number 16777216 should return 4096.
 • The number 16 should return 4.
 • The number 15 should return 3.
*/

func calcSquareRoot(input: Int) -> Int {
    guard input != 1 else { return 1 }
    var bestSquare = 0
    for i in 1...input/2 + 1 {
        if i * i == input {
            return i
        } else if i * i > input {
            return bestSquare
        } else if i * i > bestSquare && i * i < input {
            bestSquare = i
        }
    }
    return bestSquare
}

// Alternate Solution - using binary chop (equivalent to binary search), drastically reducing the number of iterations on higher inputs
func calcSquareRoot2(input: Int) -> Int {
    guard input != 1 else { return 1 }
    var lowerBound = 0
    var upperBound = 1 + input / 2
    while lowerBound + 1 < upperBound {
        let middle = lowerBound + ((upperBound - lowerBound) / 2)
        let middleSquared = middle * middle
        if middleSquared == input {
            return middle
        } else if middleSquared < input {
            lowerBound = middle
        } else {
            upperBound = middle
        }
    }
    return lowerBound
}

// Alternate Solution - if you raise a number to the power of 0.5 you get its square root
func calcSquareRoot3(input: Int) -> Int {
    return Int(floor(pow(Double(input), 0.5)))
}

// TESTING

// Solution 1
assert(calcSquareRoot(input: 9) == 3, "Challenge 25 Failed")
assert(calcSquareRoot(input: 16777216) == 4096, "Challenge 25 Failed")
assert(calcSquareRoot(input: 16) == 4, "Challenge 25 Failed")
assert(calcSquareRoot(input: 15) == 3, "Challenge 25 Failed")

// Solution 2
assert(calcSquareRoot2(input: 9) == 3, "Challenge 25 Failed")
assert(calcSquareRoot2(input: 16777216) == 4096, "Challenge 25 Failed")
assert(calcSquareRoot2(input: 16) == 4, "Challenge 25 Failed")
assert(calcSquareRoot2(input: 15) == 3, "Challenge 25 Failed")

// Solution 3
assert(calcSquareRoot3(input: 9) == 3, "Challenge 25 Failed")
assert(calcSquareRoot3(input: 16777216) == 4096, "Challenge 25 Failed")
assert(calcSquareRoot3(input: 16) == 4, "Challenge 25 Failed")
assert(calcSquareRoot3(input: 15) == 3, "Challenge 25 Failed")

print("Challenge Complete")

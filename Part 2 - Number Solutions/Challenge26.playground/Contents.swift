import UIKit

/*
 Challenge 26: Subtract without subtract
 Difficulty: Taxing
 
 Create a function that subtracts one positive integer from another, without using - operator.
 
 Sample input and output
 • The code challenge26(subtract: 5, from: 9) should return 4.
 • The code challenge26(subtract: 10, from: 30) should return 20.
*/

func subtractWithoutSubtract(subtract: Int, from: Int) -> Int {
    return from + (-subtract)
}

// Alternate Solution
func subtractWithoutSubtract2(subtract: Int, from: Int) -> Int {
    return from + (subtract * -1)
}

// Alternate Solution - using Bitwise NOT operator (~)
func subtractWithoutSubtract3(subtract: Int, from: Int) -> Int {
    return from + (~subtract + 1)
}



// TESTING

// Solution 1
assert(subtractWithoutSubtract(subtract: 5, from: 9) == 4, "Challenge 26 Failed")
assert(subtractWithoutSubtract(subtract: 10, from: 30) == 20, "Challenge 26 Failed")

// Solution 2
assert(subtractWithoutSubtract2(subtract: 5, from: 9) == 4, "Challenge 26 Failed")
assert(subtractWithoutSubtract2(subtract: 10, from: 30) == 20, "Challenge 26 Failed")

// Solution 3
assert(subtractWithoutSubtract3(subtract: 5, from: 9) == 4, "Challenge 26 Failed")
assert(subtractWithoutSubtract3(subtract: 10, from: 30) == 20, "Challenge 26 Failed")

print("Challenge Complete")

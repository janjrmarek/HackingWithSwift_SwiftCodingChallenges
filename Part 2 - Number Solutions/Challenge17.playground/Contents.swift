import UIKit

/*
 Challenge 17: Generate a random number in a range
 Difficulty: Easy
 
 Write a function that accepts positive minimum and maximum integers, and returns a random number between those two bounds, inclusive.
 
 Sample input and output
 • Given minimum 1 and maximum 5, the return values 1, 2, 3, 4, 5 are valid.
 • Given minimum 8 and maximum 10, the return values 8, 9, 10 are valid.
 • Given minimum 12 and maximum 12, the return value 12 is valid.
 • Given minimum 12 and maximum 18, the return value 7 is invalid.
*/

func generateRandomNumber(from min: Int, to max: Int) -> Int {
    return Int(arc4random_uniform(UInt32(max - min + 1))) + min
}

//TESTING

let rangeTest1 = 1...5
assert(rangeTest1.contains(generateRandomNumber(from: 1, to: 5)) == true, "Challenge 17 Failed")
let rangeTest2 = 8...10
assert(rangeTest2.contains(generateRandomNumber(from: 8, to: 10)) == true, "Challenge 17 Failed")
let rangeTest3 = 12...12
assert(rangeTest3.contains(generateRandomNumber(from: 12, to: 12)) == true, "Challenge 17 Failed")
let rangeTest4 = 12...18
assert(rangeTest4.contains(generateRandomNumber(from: 12, to: 18)) == true, "Challenge 17 Failed")


print("Challenge 17 Complete")

import UIKit

/*
Challenge 18: Recreate the pow() function
Difficulty: Easy
 
Create a function that accepts positive two integers, and raises the first to the power of the second.
 
Sample input and output
• The inputs 4 and 3 should return 64, i.e. 4 multiplied by itself 3 times.
• The inputs 2 and 8 should return 256, i.e. 2 multiplied by itself 8 times.
*/

func customPowFunction(baseNumber: Int, toThePowerOf: Int) -> Int? {
    guard baseNumber > 0, toThePowerOf >= 0 else { return nil }
    var returnBuffer = 1
    if toThePowerOf == 0 {
        return returnBuffer
    } else if toThePowerOf == 1 {
        return baseNumber
    } else {
        for _ in 1...toThePowerOf {
            returnBuffer *= baseNumber
        }
        return returnBuffer
    }
}

// Alternate Solution - not accounting for the power of 0
func customPowFunction2(baseNumber: Int, toThePowerOf: Int) -> Int? {
    guard baseNumber > 0, toThePowerOf > 0 else { return nil }
    var returnBuffer = baseNumber
    for _ in 1..<toThePowerOf {
        returnBuffer *= baseNumber
    }
    return returnBuffer
}

// Alternate Solution - using a recursive function
func customPowFunction3(baseNumber: Int, toThePowerOf: Int) -> Int? {
    guard baseNumber > 0, toThePowerOf > 0 else { return nil }
    if toThePowerOf == 1 { return baseNumber }
    return baseNumber * customPowFunction3(baseNumber: baseNumber, toThePowerOf: toThePowerOf - 1)!
}

//TESTING
//Solution 1
assert(customPowFunction(baseNumber: 4, toThePowerOf: 3) == 64, "Challenge 18 Failed")
assert(customPowFunction(baseNumber: 2, toThePowerOf: 8) == 256, "Challenge 18 Failed")
assert(customPowFunction(baseNumber: 4, toThePowerOf: 1) == 4, "Challenge 18 Failed")
assert(customPowFunction(baseNumber: 4, toThePowerOf: 0) == 1, "Challenge 18 Failed")
assert(customPowFunction(baseNumber: -4, toThePowerOf: 3) == nil, "Challenge 18 Failed")
assert(customPowFunction(baseNumber: 4, toThePowerOf: -3) == nil, "Challenge 18 Failed")

//Solution 2
assert(customPowFunction2(baseNumber: 4, toThePowerOf: 3) == 64, "Challenge 18 Failed")
assert(customPowFunction2(baseNumber: 2, toThePowerOf: 8) == 256, "Challenge 18 Failed")
assert(customPowFunction2(baseNumber: 4, toThePowerOf: 1) == 4, "Challenge 18 Failed")
assert(customPowFunction2(baseNumber: -4, toThePowerOf: 3) == nil, "Challenge 18 Failed")
assert(customPowFunction2(baseNumber: 4, toThePowerOf: -3) == nil, "Challenge 18 Failed")

//Solution 3
assert(customPowFunction3(baseNumber: 4, toThePowerOf: 3) == 64, "Challenge 18 Failed")
assert(customPowFunction3(baseNumber: 2, toThePowerOf: 8) == 256, "Challenge 18 Failed")
assert(customPowFunction3(baseNumber: 4, toThePowerOf: 1) == 4, "Challenge 18 Failed")
assert(customPowFunction3(baseNumber: -4, toThePowerOf: 3) == nil, "Challenge 18 Failed")
assert(customPowFunction3(baseNumber: 4, toThePowerOf: -3) == nil, "Challenge 18 Failed")

print("Challenge 18 Complete")


import UIKit

/*
 Challenge 21: Counting binary ones
 Difficulty: Tricky
 
 Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.
 
 Sample input and output
 • The number 12 is 1100 in binary, so it has two 1s. The next highest number with that many 1s is 17, which is 10001. The next lowest is 10, which is 1010.
 • The number 28 is 11100 in binary, so it has three 1s. The next highest number with that many 1s is 35, which is 100011. The next lowest is 26, which is 11010.
*/

func countingBinaryOnes(input: Int) -> (nextHighest: Int?, nextLowest: Int?) {
    guard input > 0 else { return (nil, nil) }
    
    func numberOfOnesIn(number: Int) -> Int {
        var binaryInputArray = Array(String(number, radix: 2))
        var extractedOnesArray = binaryInputArray.filter { $0 == "1" }
        return extractedOnesArray.count
    }
    
    let onesInInput = numberOfOnesIn(number: input)
    var nextLowest: Int? = nil
    var nextHighest: Int? = nil
    
    // Look for lower number with same 1 count in binary
    for i in 1 ... (input - 1) {
        if numberOfOnesIn(number: input - i) == onesInInput {
            nextLowest = input - i
            break
        }
    }
    
    // Find next highest number with same 1 count in binary
    var incrementer = 1
    while nextHighest == nil {
        if numberOfOnesIn(number: input + incrementer) == onesInInput {
            nextHighest = input + incrementer
        } else {
            incrementer += 1
        }
    }
    return (nextHighest, nextLowest)
    
}

// Alternate Solution
func countingBinaryOnes2(number: Int) -> (nextHighest: Int?, nextLowest: Int?) {
    
    func ones(in number: Int) -> Int {
        let currentBinary = String(number, radix: 2)
        return currentBinary.filter { (char: Character) -> Bool in char == "1" }.count
    }
    
    let targetOnes = ones(in: number)
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    
    for i in number + 1...Int.max {
        if ones(in: i) == targetOnes {
            nextHighest = i
            break
        }
    }
    
    for i in (0 ..< number).reversed() {
        if ones(in: i) == targetOnes {
            nextLowest = i
            break
        }
    }
    
    return (nextHighest, nextLowest)
}

// TESTING

// Solution 1
assert( (countingBinaryOnes(input: 12).nextHighest == 17) && (countingBinaryOnes(input: 12).nextLowest == 10), "Challenge 21 Failed")
assert( (countingBinaryOnes(input: 28).nextHighest == 35) && (countingBinaryOnes(input: 28).nextLowest == 26), "Challenge 21 Failed")

// Solution 2
assert( (countingBinaryOnes2(number: 12).nextHighest == 17) && (countingBinaryOnes2(number: 12).nextLowest == 10), "Challenge 21 Failed")
assert( (countingBinaryOnes2(number: 28).nextHighest == 35) && (countingBinaryOnes2(number: 28).nextLowest == 26), "Challenge 21 Failed")

print("Challenge Complete")








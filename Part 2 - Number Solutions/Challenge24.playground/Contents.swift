import UIKit

/*
 Challenge 24: Add numbers inside a string
 Difficulty: Tricky
 
 Given a string that contains both letters and numbers, write a function that pulls out all the numbers then returns their sum.
 
 Sample input and output
     • The string “a1b2c3” should return 6 (1 + 2 + 3).
     • The string “a10b20c30” should return 60 (10 + 20 + 30).
     • The string “h8ers” should return “8”.
*/

func addNumbersIn(string: String) -> Int {
    var currentNumber = ""
    var sum = 0
    for letter in string {
        let strLetter = String(letter)
        if Int(strLetter) != nil {
            currentNumber += strLetter
        } else {
            sum += Int(currentNumber) ?? 0
            currentNumber = ""
        }
    }
    sum += Int(currentNumber) ?? 0
    return sum
}

// Alternate Solution
func addNumbersIn2(string: String) -> Int {
    var inputString = string
    var returnTotal = 0
    
    for character in inputString.unicodeScalars {
        if CharacterSet.decimalDigits.inverted.contains(character) {
            inputString = inputString.replacingOccurrences(of: String(character), with: " ")
        }
    }
    
    let parsedNumberArray = inputString.components(separatedBy: .whitespacesAndNewlines)
    
    for i in parsedNumberArray {
        if let number = Int(i) {
            returnTotal += number
        }
    }
    return returnTotal
}

// Alternate Solution - using regex , flatMap() and reduce()
// Although this code is neater and more concise, it does not run nearly as fast as the previous 2 solutions
func addNumbersIn3(string: String) -> Int {
    let regex = try! NSRegularExpression(pattern: "(\\d+)", options: [])
    let matches = regex.matches(in: string, options: [], range: NSRange(location: 0, length: string.utf16.count))
    let allNumbers = matches.flatMap { Int((string as NSString).substring(with: $0.range)) }
    return allNumbers.reduce(0, +)
}


// TESTING

// Solution 1
assert(addNumbersIn(string: "a1b2c3") == 6, "Challenge 24 Failed")
assert(addNumbersIn(string: "a10b20c30") == 60, "Challenge 24 Failed")
assert(addNumbersIn(string: "h8ers") == 8, "Challenge 24 Failed")

// Solution 2
assert(addNumbersIn2(string: "a1b2c3") == 6, "Challenge 24 Failed")
assert(addNumbersIn2(string: "a10b20c30") == 60, "Challenge 24 Failed")
assert(addNumbersIn2(string: "h8ers") == 8, "Challenge 24 Failed")

// Solution 3
assert(addNumbersIn3(string: "a1b2c3") == 6, "Challenge 24 Failed")
assert(addNumbersIn3(string: "a10b20c30") == 60, "Challenge 24 Failed")
assert(addNumbersIn3(string: "h8ers") == 8, "Challenge 24 Failed")

print("Challenge Complete")

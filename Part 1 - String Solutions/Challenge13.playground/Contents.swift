import UIKit

/*
 Challenge 13: Run-length encoding
 Difficulty: Taxing
 
 Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.
 
 Tip: This approach is used in a simple lossless compression technique called run-length encoding.
 
 Sample input and output
 • The string “aabbcc” should return “a2b2c2”.
 • The strings “aaabaaabaaa” should return “a3b1a3b1a3”
 • The string “aaAAaa” should return “a2A2a2”
 */

func runLengthEncoding(input: String) -> String {
    let inputStringArray = Array(input)
    var returnStringBuffer = ""
    
    var currentLetter = ""
    var currentCount = 0
    
    for arrayIndex in 0..<inputStringArray.count {
        if String(inputStringArray[arrayIndex]) == currentLetter && (arrayIndex != inputStringArray.count - 1) {
            currentCount += 1
        } else {
            if currentLetter == "" {
                currentLetter = String(inputStringArray[arrayIndex])
                currentCount += 1
            } else {
                if arrayIndex == inputStringArray.count - 1 {
                    if String(inputStringArray[arrayIndex]) == currentLetter {
                        currentCount += 1
                        returnStringBuffer.append(String(currentLetter) + String(currentCount))
                    } else {
                        returnStringBuffer.append(String(currentLetter) + String(currentCount))
                        returnStringBuffer.append(String(inputStringArray[arrayIndex]) + String(1))
                    }
                } else {
                    returnStringBuffer.append(String(currentLetter) + String(currentCount))
                    currentLetter = String(inputStringArray[arrayIndex])
                    currentCount = 1
                }
            }
        }
    }
    return returnStringBuffer
}

// Alternate Solution
func runLengthEncoding2(input: String) -> String {
    var currentLetter: Character?
    var returnValue = ""
    var letterCounter = 0
    for letter in input {
        if letter == currentLetter {
            letterCounter += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            currentLetter = letter
            letterCounter = 1
        }
    }
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCounter)")
    }
    return returnValue
}

// Alternate Solution
func runLengthEncoding3(input: String) -> String {
    var returnValue = ""
    var letterCounter = 0
    var letterArray = Array(input)
    for i in 0 ..< letterArray.count {
        letterCounter += 1
        if i + 1 == letterArray.count || letterArray[i] !=
            letterArray[i + 1] {
            returnValue += "\(letterArray[i])\(letterCounter)"
            letterCounter = 0
        }
    }
    return returnValue
}

// TESTING
// Solution 1
assert(runLengthEncoding(input: "aabbcc") == "a2b2c2", "Challenge 13 Failed")
assert(runLengthEncoding(input: "aaabaaabaaa") == "a3b1a3b1a3", "Challenge 13 Failed")
assert(runLengthEncoding(input: "aaAAaa") == "a2A2a2", "Challenge 13 Failed")
// Solution 2
assert(runLengthEncoding2(input: "aabbcc") == "a2b2c2", "Challenge 13 Failed")
assert(runLengthEncoding2(input: "aaabaaabaaa") == "a3b1a3b1a3", "Challenge 13 Failed")
assert(runLengthEncoding2(input: "aaAAaa") == "a2A2a2", "Challenge 13 Failed")
// Solution 3
assert(runLengthEncoding3(input: "aabbcc") == "a2b2c2", "Challenge 13 Failed")
assert(runLengthEncoding3(input: "aaabaaabaaa") == "a3b1a3b1a3", "Challenge 13 Failed")
assert(runLengthEncoding3(input: "aaAAaa") == "a2A2a2", "Challenge 13 Failed")

print("Challenge Complete")



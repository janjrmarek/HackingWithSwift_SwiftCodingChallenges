/*
Challenge 11: Three different letters
Difficulty: Tricky
 
Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.

 Sample input and output
• The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
• The strings “Clamp” and “Crams” would return true, because there are two letter differences.
• The strings “Clamp” and “Grams” would return true, because there are three letter differences.
• The strings “Clamp” and “Grans” would return false, because there are four letter differences.
• The strings “Clamp” and “Clam” would return false, because they are different lengths.
• The strings “clamp” and “maple” should return false. Although they differ by only one letter, the letters that match are in different positions.
*/

import UIKit

func onlyThreeDifferentLetters(string1: String, string2: String) -> Bool {
    guard string1.count == string2.count else { return false }
    
    var characterMismatches = 0
    let string1Array = Array(string1)
    let string2Array = Array(string2)
    
    for arrayIndex in 0..<string1.count {
        if string1Array[arrayIndex] != string2Array[arrayIndex] {
            characterMismatches += 1
        }
    }
    return characterMismatches <= 3
}

// Alternate Solution - in this version I added a condition which ends execution as soon as 4 differences have been found
func onlyThreeDifferentLetters2(string1: String, string2: String) -> Bool {
    guard string1.count == string2.count else { return false }
    
    var characterMismatches = 0
    let string1Array = Array(string1)
    let string2Array = Array(string2)
    
    for arrayIndex in 0..<string1.count {
        if string1Array[arrayIndex] != string2Array[arrayIndex] {
            characterMismatches += 1
            if characterMismatches == 4 {
                return false
            }
        }
    }
    return characterMismatches <= 3
}

// Alternate Solution - using enumerated() to get the current index as well as each character
func onlyThreeDifferentLetters3(string1: String, string2: String) -> Bool {
    guard string1.count == string2.count else { return false }
    let firstArray = Array(string1)
    let secondArray = Array(string2)
    var differences = 0
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
            if differences == 4 {
                return false
            }
        }
    }
    return true
}

// Testing

// Solution 1
assert(onlyThreeDifferentLetters(string1: "Clamp", string2: "Cramp") == true, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters(string1: "Clamp", string2: "Crams") == true, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters(string1: "Clamp", string2: "Grams") == true, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters(string1: "Clamp", string2: "Grans") == false, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters(string1: "Clamp", string2: "Clam") == false, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters(string1: "clamp", string2: "maple") == false, "Challenge 11 Failed")

// Solution 2
assert(onlyThreeDifferentLetters2(string1: "Clamp", string2: "Cramp") == true, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters2(string1: "Clamp", string2: "Crams") == true, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters2(string1: "Clamp", string2: "Grams") == true, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters2(string1: "Clamp", string2: "Grans") == false, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters2(string1: "Clamp", string2: "Clam") == false, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters2(string1: "clamp", string2: "maple") == false, "Challenge 11 Failed")

// Solution 3
assert(onlyThreeDifferentLetters3(string1: "Clamp", string2: "Cramp") == true, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters3(string1: "Clamp", string2: "Crams") == true, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters3(string1: "Clamp", string2: "Grams") == true, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters3(string1: "Clamp", string2: "Grans") == false, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters3(string1: "Clamp", string2: "Clam") == false, "Challenge 11 Failed")
assert(onlyThreeDifferentLetters3(string1: "clamp", string2: "maple") == false, "Challenge 11 Failed")


print("Challenge Complete")

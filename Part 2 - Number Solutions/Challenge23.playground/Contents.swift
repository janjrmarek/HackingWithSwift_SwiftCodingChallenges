import UIKit

/*
 Challenge 23: Integer disguised as string
 Difficulty: Tricky
 
 Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.
 
 Sample input and output
     • The input “01010101” should return true.
     • The input “123456789” should return true.
     • The letter “9223372036854775808” should return true.
     • The letter “1.01” should return false; “.” is not a number.
 */

func integerDisguisedAsString(input: String) -> Bool {
    let inputSet = Set(input.characters)
    for character in String(inputSet).unicodeScalars {
        if !CharacterSet.decimalDigits.contains(character) {
            return false
        }
    }
    return true
}

// Alternate Solution - using filter() and count for set comparison instead
func integerDisguisedAsString2(input: String) -> Bool {
    let inputSet = Set(String(input.characters))
    let filteredSet = inputSet.filter { CharacterSet.decimalDigits.contains(UnicodeScalar(String($0))!) }
    return inputSet.count == filteredSet.count
}

// Alternate Solution
func integerDisguisedAsString3(input: String) -> Bool {
    for letter in input {
        if Int(String(letter)) == nil {
            return false
        }
    }
    return true
}

// Alternate Solution - using rangeOfCharacter(from:) method and an inverted Character Set
func integerDisguisedAsString4(input: String) -> Bool {
    return input.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
}

// Alternate Solution - unlike Characterset.decimalDigits, this hard coded CharacterSet doesn't contain Arabic-Indic numberals
func integerDisguisedAsString5(input: String) -> Bool {
    return input.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
}



// TESTING

// Solution 1
assert(integerDisguisedAsString(input: "01010101") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString(input: "123456789") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString(input: "9223372036854775808") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString(input: "1.01") == false, "Challenge 23 Failed")

// Solution 2
assert(integerDisguisedAsString2(input: "01010101") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString2(input: "123456789") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString2(input: "9223372036854775808") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString2(input: "1.01") == false, "Challenge 23 Failed")

// Solution 3
assert(integerDisguisedAsString3(input: "01010101") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString3(input: "123456789") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString3(input: "9223372036854775808") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString3(input: "1.01") == false, "Challenge 23 Failed")

// Solution 4
assert(integerDisguisedAsString4(input: "01010101") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString4(input: "123456789") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString4(input: "9223372036854775808") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString4(input: "1.01") == false, "Challenge 23 Failed")

// Solution 5
assert(integerDisguisedAsString5(input: "01010101") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString5(input: "123456789") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString5(input: "9223372036854775808") == true, "Challenge 23 Failed")
assert(integerDisguisedAsString5(input: "1.01") == false, "Challenge 23 Failed")

print("Challenge Complete")

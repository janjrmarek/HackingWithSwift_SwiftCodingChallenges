/*
 
Challenge 7: Condense whitespace
Difficulty: Easy
 
Write a function that returns a string with any consecutive spaces replaced with a single space.
 
Sample input and output
I’ve marked spaces using “[space]” below for visual purposes:
• The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
• The string “[space][space][space][space]a” should return “[space]a”.
• The string “abc” should return “abc”.
 
 */

import UIKit

func condenseWhitespace(_ input: String) -> String {
    var returnString = input
    while returnString.contains("  ") {
        returnString = returnString.replacingOccurrences(of: "  ", with: " ")
    }
    return returnString
}

// Alternate soution using an array
func condenseWhitespace2(_ input: String) -> String {
    var seenSpace = false
    var returnValue = ""
    for letter in input {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        returnValue.append(letter)
    }
    return returnValue
}

// Alternate solution using regular expressions
func condenseWhitespace3(_ input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}


// TESTING
assert(condenseWhitespace("a   b   c") == "a b c", "Challenge 7 Failed")
assert(condenseWhitespace("    a") == " a", "Challenge 7 Failed")
assert(condenseWhitespace("abc") == "abc", "Challenge 7 Failed")

assert(condenseWhitespace2("a   b   c") == "a b c", "Challenge 7 Failed")
assert(condenseWhitespace2("    a") == " a", "Challenge 7 Failed")
assert(condenseWhitespace2("abc") == "abc", "Challenge 7 Failed")

assert(condenseWhitespace3("a   b   c") == "a b c", "Challenge 7 Failed")
assert(condenseWhitespace3("    a") == " a", "Challenge 7 Failed")
assert(condenseWhitespace3("abc") == "abc", "Challenge 7 Failed")

print("Challenge Complete")

/*
Challenge 8: String is rotated
Difficulty: Tricky
 
Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
 
Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
 
Sample input and output
• The string “abcde” and “eabcd” should return true.
• The string “abcde” and “cdeab” should return true.
• The string “abcde” and “abced” should return false; this is not a string rotation.
• The string “abc” and “a” should return false; this is not a string rotation.
*/

import UIKit

// If you write a string twice it must always encapsulate all possible rotations
func isStringRotated(string1: String, string2: String) -> Bool {
    guard string1.count == string2.count else { return false }
    let doubledSecondString = string2 + string2
    return doubledSecondString.contains(string1)
}

// Testing
assert(isStringRotated(string1: "abcde", string2: "eabcd") == true, "Challenge 8 Failed")
assert(isStringRotated(string1: "abcde", string2: "eabcd") == true, "Challenge 8 Failed")
assert(isStringRotated(string1: "abcde", string2: "eabcd") == true, "Challenge 8 Failed")

print("Challenge Complete")





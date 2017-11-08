/*
Challenge 9: Find pangrams
Difficulty: Tricky
 
Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
 
Tip: A pangram is a string that contains every letter of the alphabet at least once.
 
Sample input and output
• The string “The quick brown fox jumps over the lazy dog” should return true.
• The string “The quick brown fox jumped over the lazy dog” should return false, because it’s missing the S.
 */

import UIKit

// Solution using regular expressions
func isStringAPangram(input: String) -> Bool {
    var containedLetterSetBuffer = Set<Character>()
    let lowerCasedAlphaInput = input.lowercased().replacingOccurrences(of: "[^a-z]", with: "", options: .regularExpression, range: nil)
    for letter in lowerCasedAlphaInput.characters {
        containedLetterSetBuffer.insert(letter)
    }
    return containedLetterSetBuffer.count == 26
}

// Alternate solution using filter() method
func isStringAPangram2(input: String) -> Bool {
    let set = Set(input.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}



// Testing
assert(isStringAPangram(input: "The quick brown fox jumps over the lazy dog") == true, "Challenge 9 Failed")
assert(isStringAPangram(input: "The quick brown fox jumped over the lazy dog") == false, "Challenge 9 Failed")

print("Challenge Complete")

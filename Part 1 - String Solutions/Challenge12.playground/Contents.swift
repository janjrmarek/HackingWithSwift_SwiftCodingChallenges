/*
Challenge 12: Find longest prefix
Difficulty: Tricky
 
Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.
 
 Sample input and output
 • The string “swift switch swill swim” should return “swi”.
 • The string “flip flap flop” should return “fl”.
*/

import UIKit

func findLongestPrefix(input:String) -> String {
    let lowercasedInput = input.lowercased()
    var parsedInputArray = lowercasedInput.components(separatedBy: CharacterSet.whitespacesAndNewlines)
    guard let firstInParsedInputArray = parsedInputArray.first else { return "" }
    
    var currentPrefix = ""
    var bestPrefix = ""
    for letter in firstInParsedInputArray {
        currentPrefix.append(letter)
        for word in parsedInputArray {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    return bestPrefix
}

// Testing
assert(findLongestPrefix(input: "swift switch swill swim") == "swi", "Challenge 12 Failed")
assert(findLongestPrefix(input: "flip flap flop") == "fl", "Challenge 12 Failed")

print("Challenge Complete")

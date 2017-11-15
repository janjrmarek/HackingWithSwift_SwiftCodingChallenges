import UIKit

/*
 Challenge 15: Reverse the words in a string
 Difficulty: Taxing
 
 Write a function that returns a string with each of its words reversed but in the original order, without using a loop.
 
 Sample input and output
 • The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.
 • The string “The quick brown fox” should return “ehT kciuq nworb xof”.
*/

func reverseWordsInString(input: String) -> String {
    let parsedInputArray = input.components(separatedBy: .whitespaces)
    let reversedInputArray = parsedInputArray.map { String($0.reversed()) }
    return reversedInputArray.joined(separator: " ")
}

// TESTING
// Solution 1
assert(reverseWordsInString(input: "Swift Coding Challenges") == "tfiwS gnidoC segnellahC", "Challenge 15 Failed")
assert(reverseWordsInString(input: "The quick brown fox") == "ehT kciuq nworb xof", "Challenge 15 Failed")

print("Challenge Complete")

/*
 
Challenge 10: Vowels and consonants
Difficulty: Tricky
 
Given a string in English, return a tuple containing the number of vowels and consonants.
 
Sample input and output
 • The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 • The input “Mississippi” should return 4 vowels and 7 consonants.
 
*/

import UIKit

func vowelAndConsonantsCounts(input: String) -> (vowelCount: Int, consonantCount: Int) {
    var result = (vowelCount: 0, consonantCount: 0)
    let lowerCasedInputString = input.lowercased()
    let allVowels = CharacterSet(charactersIn: "aeiou")
    let allConsonants = CharacterSet.lowercaseLetters.subtracting(allVowels)
    
    for letter in lowerCasedInputString.unicodeScalars {
        if allVowels.contains(letter){
            result.vowelCount += 1
        } else if allConsonants.contains(letter){
            result.consonantCount += 1
        } else {
            // The character is not a letter
        }
    }
    return result
}

// Alternate solution - similar, but using rangeOfCharacter()
func vowelAndConsonantsCounts2(input: String) -> (vowelCount: Int, consonantCount: Int) {
    let vowels = CharacterSet(charactersIn: "aeiou")
    let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
    var vowelCount = 0
    var consonantCount = 0
    for letter in input.lowercased() {
        let stringLetter = String(letter)
        if stringLetter.rangeOfCharacter(from: vowels) != nil {
            vowelCount += 1
        } else if stringLetter.rangeOfCharacter(from: consonants) != nil {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}

// Alternate solution - using String contains() method and no CharacterSet
func vowelAndConsonantsCounts3(input: String) -> (vowelCount: Int, consonantCount: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var vowelCount = 0
    var consonantCount = 0
    for letter in input.lowercased() {
        let stringLetter = String(letter)
        if vowels.contains(stringLetter) {
            vowelCount += 1
        } else if consonants.contains(stringLetter) {
            consonantCount += 1
        } }
    return (vowelCount, consonantCount)
}

// Alternate solution - using Arrays and contains() method on the arrays
func vowelAndConsonantsCounts4(input: String) -> (vowelCount: Int, consonantCount: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var vowelCount = 0
    var consonantCount = 0
    for letter in input.lowercased() {
        if vowels.contains(letter) {
            vowelCount += 1
        } else if consonants.contains(letter) {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}

// Testing
// Solution 1
assert(vowelAndConsonantsCounts(input: "Swift Coding Challenges") == (6, 15), "Challenge 10 Failed")
assert(vowelAndConsonantsCounts(input: "Mississippi") == (4, 7), "Challenge 10 Failed")
// Solution 2
assert(vowelAndConsonantsCounts2(input: "Swift Coding Challenges") == (6, 15), "Challenge 10 Failed")
assert(vowelAndConsonantsCounts2(input: "Mississippi") == (4, 7), "Challenge 10 Failed")
// Solution 3
assert(vowelAndConsonantsCounts3(input: "Swift Coding Challenges") == (6, 15), "Challenge 10 Failed")
assert(vowelAndConsonantsCounts3(input: "Mississippi") == (4, 7), "Challenge 10 Failed")
// Solution 4
assert(vowelAndConsonantsCounts4(input: "Swift Coding Challenges") == (6, 15), "Challenge 10 Failed")
assert(vowelAndConsonantsCounts4(input: "Mississippi") == (4, 7), "Challenge 10 Failed")
print("Challenge Complete")

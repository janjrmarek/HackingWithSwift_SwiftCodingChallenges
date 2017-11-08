//: Playground - noun: a place where people can play

import UIKit

//Challenge 3: Do two strings contain the same characters?
//Difficulty: Easy
//Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
//Sample input and output
//• The strings “abca” and “abca” should return true.
//• The strings “abc” and “cba” should return true.
//• The strings “ a1 b2 ” and “b1 a2” should return true.
//• The strings “abc” and “abca” should return false.
//• The strings “abc” and “Abc” should return false.
//• The strings “abc” and “cbAa” should return false.

func doStringsContainSameCharacters(inputOne: String, inputTwo: String) -> Bool {
    return inputOne.characters.sorted() == inputTwo.characters.sorted()
}

// TESTING
assert(doStringsContainSameCharacters(inputOne: "abca", inputTwo: "abca") == true, "Challenge 3 Failed")
assert(doStringsContainSameCharacters(inputOne: "abc", inputTwo: "cba") == true, "Challenge 3 Failed")
assert(doStringsContainSameCharacters(inputOne: "a1 b2", inputTwo: "b1 a2") == true, "Challenge 3 Failed")
assert(doStringsContainSameCharacters(inputOne: "abc", inputTwo: "abca") == false, "Challenge 3 Failed")
assert(doStringsContainSameCharacters(inputOne: "abc", inputTwo: "Abc") == false, "Challenge 3 Failed")
assert(doStringsContainSameCharacters(inputOne: "abc", inputTwo: "cbAa") == false, "Challenge 3 Failed")

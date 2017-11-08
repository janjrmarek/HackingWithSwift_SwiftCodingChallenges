import UIKit

//Challenge 1: Are the letters unique?
//Difficulty: Easy
//Solved By: Jan Marek
//
//Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
//
//Sample input and output
//The string “No duplicates” should return true.
//The string “abcdefghijklmnopqrstuvwxyz” should return true.
//The string “AaBbCc” should return true because the challenge is case-sensitive.
//The string “Hello, world” should return false because of the double Ls and double Os.

func areLettersUnique(givenWord: String) -> Bool {
    return givenWord.characters.count == Set(givenWord.characters).count
}

// Testing
assert(areLettersUnique(givenWord: "No duplicates") == true, "Challenge 1 failed")
assert(areLettersUnique(givenWord: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(areLettersUnique(givenWord: "AaBbCc") == true, "Challenge 1 failed")
assert(areLettersUnique(givenWord: "Hello, world") == false, "Challenge 1 failed")


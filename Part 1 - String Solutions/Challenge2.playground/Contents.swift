//: Playground - noun: a place where people can play

import UIKit

//Challenge 2: Is a string a palindrome?
//Difficulty: Easy
//Solved By: Jan Marek
//
//Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.
//
//Sample input and output
//The string “rotator” should return true.
//The string “Rats live on no evil star” should return true.
//The string “Never odd or even” should return false; even though the letters are the same in reverse the spaces are in different places.
//The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards.

func isStringAPalinDrome(input: String) -> Bool {
    //return input == String(input.reversed())
    let inputLowerCased = input.lowercased()
    let reversedLowerCased = inputLowerCased.reversed()
    
    return input.lowercased() == String(reversedLowerCased)
}

// Testing
assert(isStringAPalinDrome(input: "rotator") == true, "Challenge 2 failed")
assert(isStringAPalinDrome(input: "Rats live on no evil star") == true, "Challenge 2 failed")
assert(isStringAPalinDrome(input: "Never odd or even") == false, "Challenge 2 failed")
assert(isStringAPalinDrome(input: "Hello, world") == false, "Challenge 2 failed")

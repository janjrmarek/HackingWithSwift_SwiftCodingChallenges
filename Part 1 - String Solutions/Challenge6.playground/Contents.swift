/*
Challenge 6: Remove duplicate letters from a string
Difficulty: Easy
 
Write a function that accepts a string as its input, and returns the same string just with
duplicate letters removed.
 
Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.
 
Sample input and output
• The string “wombat” should print “wombat”.
• The string “hello” should print “helo”.
• The string “Mississippi” should print “Misp”.
 */

import UIKit

func removeDuplicateLetters(from string: String) -> String {
    
    var stringBuffer:String = ""
    
    for character in string {
        if !stringBuffer.contains(character) {
            stringBuffer.append(character)
        }
    }
    return stringBuffer
}

// Alternate solution using NSOrderedSet
func removeDuplicateLetters2(from string: String) -> String {
    let array = string.map { String($0) }
    let set = NSOrderedSet(array: array)
    let letters = Array(set) as! Array<String>
    return letters.joined()
}


// Alternate solution using a dictionary in combination with the filter() method
func removeDuplicateLetters3(from string: String) -> String {
    var used = [Character: Bool]()
    let result = string.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    return String(result)
}


// TESTING
assert(removeDuplicateLetters(from: "wombat") == "wombat", "Challenge 5 Failed")
assert(removeDuplicateLetters(from: "hello") == "helo", "Challenge 5 Failed")
assert(removeDuplicateLetters(from: "Mississippi") == "Misp", "Challenge 5 Failed")

assert(removeDuplicateLetters2(from: "wombat") == "wombat", "Challenge 5 Failed")
assert(removeDuplicateLetters2(from: "hello") == "helo", "Challenge 5 Failed")
assert(removeDuplicateLetters2(from: "Mississippi") == "Misp", "Challenge 5 Failed")

assert(removeDuplicateLetters3(from: "wombat") == "wombat", "Challenge 5 Failed")
assert(removeDuplicateLetters3(from: "hello") == "helo", "Challenge 5 Failed")
assert(removeDuplicateLetters3(from: "Mississippi") == "Misp", "Challenge 5 Failed")

print("Challenge Complete")

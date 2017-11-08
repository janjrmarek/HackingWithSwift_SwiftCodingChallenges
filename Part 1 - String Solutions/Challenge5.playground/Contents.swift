/*
Challenge 5: Count the characters
Difficulty: Easy
 
Write a function that accepts a string, and returns how many times a
specific character appears, taking case into account.
 
Tip: If you can solve this without using a for-in loop, you can consider
it a Tricky challenge.
 
Sample input and output
• The letter “a” appears twice in “The rain in Spain”.
• The letter “i” appears four times in “Mississippi”.
• The letter “i” appears three times in “Hacking with Swift”.
*/

import UIKit

func countTheCharacter(_ character: Character, in givenWord: String) -> Int {
    var characterCount = 0
    for char in givenWord {
        if char == character {
            characterCount += 1
        }
    }
    return characterCount
}

// Alternate solution using reduce()
// Has the advantage of making for very clear, expressive, and concise code
// runs about 10% slower than the first solution.
func countTheCharacter2(_ character: Character, in givenWord: String) -> Int {
    return givenWord.reduce(0) {
        $1 == character ? $0 + 1 : $0
    }
}

// Third solution using NSCountedSet
// Wasteful unless you intend to count several characters
// Ten times slower than the first solution.
func countTheCharacter3(_ character: Character, in givenWord: String) -> Int {
    let array = givenWord.map { String($0) }
    let counted = NSCountedSet(array: array)
    return counted.count(for: String(character))
}

// Fourth solution
// Calculate how many times a letter appears in a string by removing it,
// then comparing the lengths of the original and modified strings.
func countTheCharacter4(_ character: Character, in givenWord: String) -> Int {
    let modifiedInput = givenWord.replacingOccurrences(of: String(character), with: "")
    return givenWord.count - modifiedInput.count
}



// TESTING
assert(countTheCharacter("a", in: "The rain in Spain") == 2, "Challenge 5 Failed")
assert(countTheCharacter("i", in: "TMississippi") == 4, "Challenge 5 Failed")
assert(countTheCharacter("i", in: "Hacking with Swift") == 3, "Challenge 5 Failed")

assert(countTheCharacter2("a", in: "The rain in Spain") == 2, "Challenge 5 Failed")
assert(countTheCharacter2("i", in: "TMississippi") == 4, "Challenge 5 Failed")
assert(countTheCharacter2("i", in: "Hacking with Swift") == 3, "Challenge 5 Failed")

assert(countTheCharacter3("a", in: "The rain in Spain") == 2, "Challenge 5 Failed")
assert(countTheCharacter3("i", in: "TMississippi") == 4, "Challenge 5 Failed")
assert(countTheCharacter3("i", in: "Hacking with Swift") == 3, "Challenge 5 Failed")

assert(countTheCharacter4("a", in: "The rain in Spain") == 2, "Challenge 5 Failed")
assert(countTheCharacter4("i", in: "TMississippi") == 4, "Challenge 5 Failed")
assert(countTheCharacter4("i", in: "Hacking with Swift") == 3, "Challenge 5 Failed")

print("Challenge Complete")

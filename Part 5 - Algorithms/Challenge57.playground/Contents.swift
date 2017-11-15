import UIKit

/*
Challenge 57: Isomorphic values
Difficulty: Easy
 
Write a function that accepts two values and returns true if they are isomorphic. That is, each part of the value must map to precisely one other, but that might be itself.
 
Tip: Strings A and B are considered isomorphic if you can replace all instances of each letter with another. For example, “tort” and “pump” are isomorphic, because you can replace both Ts with a P, the O with a U, and the R with an M. For integers you compare individual digits, so 1231 and 4564 are isomorphic numbers. For arrays you compare elements, so [1, 2, 1] and [4, 8, 4] are isomorphic.
 
Sample input and output
 
These are all isomorphic values:
    • “clap” and “slap”
    • “rum” and “mud”
    • “pip” and “did”
    • “carry” and “baddy”
    • “cream” and “lapse”
    • 123123 and 456456
    • 3.14159 and 2.03048
    • [1, 2, 1, 2, 3] and [4, 5, 4, 5, 6]
 
These are not isomorphic values:
    • “carry” and “daddy” – the Rs have become D, but C has also become D.
    • “did” and “cad” – the first D has become C, but the second has remained D.
    • “maim” and “same” – the first M has become S, but the second has become E.
    • “curry” and “flurry” – the strings have different lengths.
    • 112233 and 112211 – the number 1 is being mapped to 1, and the number 3 is also being mapped to 1.
 */


func isomorphicValues(first firstValue: Any, second secondValue: Any) -> Bool {
    let first = String(describing: firstValue)
    let second = String(describing: secondValue)
    
    guard first.count == second.count else { return false }
    
    var characterMap = [Character: Character]()
    let firstArray = Array(first)
    let secondArray = Array(second)
    
    for (index, character) in firstArray.enumerated() {
        let otherCharacter = secondArray[index]
        if let currentMapping = characterMap[character] {
            if currentMapping != otherCharacter {
                return false
            }
        } else {
            if characterMap.values.contains(otherCharacter) {
                return false
            }
            characterMap[character] = otherCharacter
        }
    }
    return true
}

// TESTING
assert( isomorphicValues(first: "clap", second: "slap") == true, "Challenge 57 Failed")
assert( isomorphicValues(first: "rum", second: "mud") == true, "Challenge 57 Failed")
assert( isomorphicValues(first: "pip", second: "did") == true, "Challenge 57 Failed")
assert( isomorphicValues(first: "carry", second: "baddy") == true, "Challenge 57 Failed")
assert( isomorphicValues(first: "cream", second: "lapse") == true, "Challenge 57 Failed")
assert( isomorphicValues(first: 123123, second: 456456) == true, "Challenge 57 Failed")
assert( isomorphicValues(first: 3.14159, second: 2.03048) == true, "Challenge 57 Failed")
assert( isomorphicValues(first: [1, 2, 1, 2, 3], second: [4, 5, 4, 5, 6]) == true, "Challenge 57 Failed")
assert( isomorphicValues(first: "carry", second: "daddy") == false, "Challenge 57 Failed")
assert( isomorphicValues(first: "did", second: "cad") == false, "Challenge 57 Failed")
assert( isomorphicValues(first: "maim", second: "same") == false, "Challenge 57 Failed")
assert( isomorphicValues(first: "curry", second: "flurry") == false, "Challenge 57 Failed")
assert( isomorphicValues(first: 112233, second: 112211) == false, "Challenge 57 Failed")

print("Challenge Complete")

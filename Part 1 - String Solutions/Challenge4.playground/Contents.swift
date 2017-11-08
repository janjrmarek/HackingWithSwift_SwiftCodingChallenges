/*
 Challenge 4: Does one string contain another?
Difficulty: Easy

Write your own version of the contains() method on String that ignores letter case, and
without using the existing contains() method.
Sample input and output
• The code "Hello, world".fuzzyContains("Hello") should return true.
• The code "Hello, world".fuzzyContains("WORLD") should return true.
• The code "Hello, world".fuzzyContains("Goodbye") should return false.
 */

import UIKit

extension String {
    
    func fuzzyContains(_ string: String) -> Bool {
        
        let contained = self.lowercased().range(of: string.lowercased())
        
        if contained != nil {
            return true
        } else {
            return false
        }
    }
}

// A revised solution of the function above
extension String {
    func fuzzyContains2(_ string: String) -> Bool {
        return self.uppercased().range(of: string.uppercased()) != nil
    }
}

// An alternate solution
extension String {
    func fuzzyContains3(_ string: String) -> Bool {
        return self.range(of: string, options: .caseInsensitive) != nil
    }
}

// TESTING
assert("Hello, world".fuzzyContains("Hello") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains("WORLD") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains("Goodbye") == false, "Challenge 4 Failed")

assert("Hello, world".fuzzyContains2("Hello") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains2("WORLD") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains2("Goodbye") == false, "Challenge 4 Failed")

assert("Hello, world".fuzzyContains3("Hello") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains3("WORLD") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains3("Goodbye") == false, "Challenge 4 Failed")

print("Challenge Complete")

import UIKit

/*
 
 Challenge 39: Sort a string array by length
 Difficulty: Easy
 
 Extend collections with a function that returns an array of strings sorted by their lengths, longest first.
 
 Sample input and output
 • The code ["a", "abc", "ab"].challenge39() should return ["abc", "ab", "a"].
 • The code ["paul", "taylor", "adele"].challenge39() should return ["taylor", "adele", "paul"].
 • The code [String]().challenge39() should return [].
 
 */

extension Collection where Iterator.Element == String {
    func sortStringArrayByLength() -> [String] {
        return self.sorted { $0.count > $1.count }
    }
}

// TESTING
assert(["a", "abc", "ab"].sortStringArrayByLength() == ["abc", "ab", "a"], "Challenge 39 Failed")
assert(["paul", "taylor", "adele"].sortStringArrayByLength() == ["taylor", "adele", "paul"], "Challenge 39 Failed")
assert([String]().sortStringArrayByLength() == [], "Challenge 39 Failed")

print("Challenge Complete")

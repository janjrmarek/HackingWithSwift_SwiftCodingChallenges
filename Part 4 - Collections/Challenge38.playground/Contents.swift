import UIKit

/*
 
 Challenge 38: Find N smallest
 Difficulty: Easy
 
 Write an extension for all collections that returns the N smallest elements as an array, sorted smallest first, where N is an integer parameter.
 
 Sample input and output
 • The code [1, 2, 3, 4].challenge38(count: 3) should return [1, 2, 3].
 • The code ["q", "f", "k"].challenge38(count: 10) should return [“f”, “k”, “q”].
 • The code [256, 16].challenge38(count: 3) should return [16, 256].
 • The code [String]().challenge38(count: 3) should return an empty array.
 
*/

extension Collection where Iterator.Element: Comparable {
    
    func findNSmallest(count: Int) -> [Iterator.Element] {
        let sorted = self.sorted()
        return Array(sorted.prefix(count))
    }
}

// TESTING
assert([1, 2, 3, 4].findNSmallest(count: 3) == [1, 2, 3], "Challenge 38 Failed")
assert(["q", "f", "k"].findNSmallest(count: 10) == ["f", "k", "q"], "Challenge 38 Failed")
assert([256, 16].findNSmallest(count: 3) == [16, 256], "Challenge 38 Failed")
assert([String]().findNSmallest(count: 3) == [], "Challenge 38 Failed")

print("Challenge Complete")


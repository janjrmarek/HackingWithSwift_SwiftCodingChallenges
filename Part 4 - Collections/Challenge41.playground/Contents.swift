import UIKit

/*
 
 Challenge 41: Find the median
 Difficulty: Easy
 
 Write an extension to collections that accepts an array of Int and returns the median average, or nil if there are no values.
 
 Sample input and output
 • The code [1, 2, 3].challenge41() should return 2.
 • The code [1, 2, 9].challenge41() should return 2.
 • The code [1, 3, 5, 7, 9].challenge41() should return 5.
 • The code [1, 2, 3, 4].challenge41() should return 2.5.
 • The code [Int]().challenge41() should return nil.
 
*/

extension Collection where Iterator.Element == Int {
    func findTheMedian() -> Double? {
        guard self.isEmpty != true else { return nil }
        
        let sortedInputArray = self.sorted()
        let middle = sortedInputArray.count / 2
        
        if sortedInputArray.count % 2 == 0 {
            return (Double(sortedInputArray[middle]) + Double(sortedInputArray[middle - 1])) / 2.0
        } else {
            return Double(sortedInputArray[middle])
        }
    }
}

// TESTING

assert( [1, 2, 3].findTheMedian() == 2, "Challenge 41 Failed")
assert( [1, 2, 9].findTheMedian() == 2, "Challenge 41 Failed")
assert( [1, 3, 5, 7, 9].findTheMedian() == 5, "Challenge 41 Failed")
assert( [1, 2, 3, 4].findTheMedian() == 2.5, "Challenge 41 Failed")
assert( [7].findTheMedian() == 7, "Challenge 41 Failed")
assert( [Int]().findTheMedian() == nil, "Challenge 41 Failed")

print("Challenge Complete")

import UIKit

/*
 Challenge 42: Recreate index(of:)
 Difficulty: Easy
 
 Write an extension for all collections that reimplements the index(of:) method.

 Sample input and output
     • The code [1, 2, 3].challenge42(indexOf: 1) should return 0.
     • The code [1, 2, 3].challenge42(indexOf: 3) should return 2.
     • The code [1, 2, 3].challenge42(indexOf: 5) should return nil.
*/

extension Collection where Iterator.Element: Equatable {
    
    func recreate(indexOf search: Iterator.Element) -> Int? {
        for (index, item) in self.enumerated() {
            if item == search {
                return index
            }
        }
        return nil
    }
}


// TESTING

assert( [1, 2, 3].recreate(indexOf: 1) == 0, "Challenge 42 Failed")
assert( [1, 2, 3].recreate(indexOf: 3) == 2, "Challenge 42 Failed")
assert( [1, 2, 3].recreate(indexOf: 5) == nil, "Challenge 42 Failed")

print("Challenge Complete")

import UIKit

/*
 
 Challenge 37: Count the numbers
 Difficulty: Easy
 
 Write an extension for collections of integers that returns the number of times a specific digit appears in any of its numbers.
 
 Sample input and output
 • The code [5, 15, 55, 515].challenge37(count: "5") should return 6.
 • The code [5, 15, 55, 515].challenge37(count: "1") should return 2.
 • The code [55555].challenge37(count: "5") should return 5.
 • The code [55555].challenge37(count: "1") should return 0.
 
*/

extension Collection where Iterator.Element == Int {
    func countTheNumbers(count: Character) -> Int {
        var total = 0
        for item in self {
            let str = String(item)
            for letter in str {
                if letter == count {
                    total += 1
                }
            }
        }
        return total
    }
}

// Alternate Solution - using reduce() and filter()
extension Collection where Iterator.Element == Int {
    func countTheNumbers2(count: Character) -> Int {
        return self.reduce(0) { $0 + String($1).filter { (char: Character) -> Bool in char == count }.count }
    }
}

// TESTING

// Solution 1
assert([5, 15, 55, 515].countTheNumbers(count: "5") == 6, "Challenge 37 Failed")
assert([5, 15, 55, 515].countTheNumbers(count: "1") == 2, "Challenge 37 Failed")
assert([55555].countTheNumbers(count: "5") == 5, "Challenge 37 Failed")
assert([55555].countTheNumbers(count: "1") == 0, "Challenge 37 Failed")

// Solution 2
assert([5, 15, 55, 515].countTheNumbers2(count: "5") == 6, "Challenge 37 Failed")
assert([5, 15, 55, 515].countTheNumbers2(count: "1") == 2, "Challenge 37 Failed")
assert([55555].countTheNumbers2(count: "5") == 5, "Challenge 37 Failed")
assert([55555].countTheNumbers2(count: "1") == 0, "Challenge 37 Failed")

print("Challenge Complete")

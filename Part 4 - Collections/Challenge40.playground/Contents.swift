import UIKit

/*
 
 Challenge 40: Missing numbers in array
 Difficulty: Easy
 
 Create a function that accepts an array of unsorted numbers from 1 to 100 where zero or more numbers might be missing, and returns an array of the missing numbers.
 
 Sample input and output
 If your test array were created like this:
     var testArray = Array(1...100)
     testArray.remove(at: 25)
     testArray.remove(at: 20)
     testArray.remove(at: 6)
 
 Then your method should [7, 21, 26], because those are the numbers missing from the array.
 
*/

func missingNumbersInArray(input: [Int]) -> [Int] {
    let oneToHundredSet = Set(1...100)
    var missingNumbers = [Int]()
    
    for i in oneToHundredSet {
        if !input.contains(i) {
            missingNumbers.append(i)
        }
    }
    return missingNumbers.sorted()
}

// Alternate Solution - A much faster solution is to use a set, which has an O(n) contains() method – it runs at the same speed no matter whether it contains one item or one thousand.
func missingNumbersInArray2(input: [Int]) -> [Int] {
    let correctArray = Array(1...100)
    let inputSet = Set(input)
    var missingNumbers = [Int]()
    for number in correctArray {
        if !inputSet.contains(number) {
            missingNumbers.append(number)
        }
    }
    return missingNumbers
}

// Alternate Solution - using set algebra. Although this solution is the shortest and clearest, it is also the slower than the previous 2.
func missingNumbersInArray3(input: [Int]) -> [Int] {
    let correctSet = Set(1...100)
    let inputSet = Set(input)
    return Array(correctSet.subtracting(inputSet)).sorted()
}

// TESTING

var testArray = Array(1...100)
testArray.remove(at: 25)
testArray.remove(at: 20)
testArray.remove(at: 6)

// Solution 1
assert(missingNumbersInArray(input: testArray) == [7, 21, 26], "Challenge 40 Failed")

// Solution 2
assert(missingNumbersInArray2(input: testArray) == [7, 21, 26], "Challenge 40 Failed")

// Solution 3
assert(missingNumbersInArray3(input: testArray) == [7, 21, 26], "Challenge 40 Failed")

print("Challenge Complete")

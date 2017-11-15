import UIKit

/*
 Challenge 55: Bubble sort
 Difficulty: Easy
 
 Create an extension for arrays that sorts them using the bubble sort algorithm.
 
 Tip: A bubble sort repeatedly loops over the items in an array, comparing items that are next to each other and swapping them if they aren’t sorted. This looping continues until all items are in their correct order.
 
 Sample input and output
     • The array[12, 5, 4, 9, 3, 2, 1]should become[1, 2, 3, 4, 5, 9, 12].
     • The array ["f", "a", "b"] should become ["a", "b", "f"].
     • The array [String]() should become [].
*/


extension Array where Element: Comparable {
    
    func bubbleSort() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = self
        var swapsMade: Bool
        
        repeat {
            // looping from scratch, so reset swapsMade to false
            swapsMade = false
            
            // loop over all items in the array, excluding the last one
            for index in 0 ..< returnValue.count - 1 {
                
                // pull out the current element and its successor
                let element = returnValue[index]
                let next = returnValue[index + 1]
                
                // if the current one is bigger than its successor...
                if (element > next) {
                    
                    // swap them
                    returnValue.swapAt(index, index + 1)
                    
                    // and mark that we made a swap so the loop will repeat
                    swapsMade = true
                }
            }
        } while swapsMade == true
        
        // send back the sorted array
        return returnValue
    }
}

// Alternate Solution - Optimized version
// After the loop has completed N times, the Nth largest item is in its final place. Only loop from 0 up to the index of the highest sorted item – everything after that is guaranteed to be sorted already
extension Array where Element: Comparable {
    
    func bubbleSort2() -> [Element] {
        guard count > 0 else { return [Element]() }
        var returnValue = self
        var highestSortedIndex = count
        
        repeat {
            var lastSwapIndex = 0
            
            for index in 0 ..< highestSortedIndex - 1 {
                let element = returnValue[index]
                let next = returnValue[index + 1]
                
                if (element > next) {
                    returnValue.swapAt(index, index + 1)
                    lastSwapIndex = index + 1
                }
            }
            highestSortedIndex = lastSwapIndex
            
        } while highestSortedIndex != 0
        
        return returnValue
    }
}


// TESTING

// Solution 1
assert( [12, 5, 4, 9, 3, 2, 1].bubbleSort() == [1, 2, 3, 4, 5, 9, 12], "Challenge 55 Failed")
assert( ["f", "a", "b"].bubbleSort() == ["a", "b", "f"], "Challenge 55 Failed")
assert( [String]().bubbleSort() == [], "Challenge 55 Failed")

// Solution 2
assert( [12, 5, 4, 9, 3, 2, 1].bubbleSort2() == [1, 2, 3, 4, 5, 9, 12], "Challenge 55 Failed")
assert( ["f", "a", "b"].bubbleSort2() == ["a", "b", "f"], "Challenge 55 Failed")
assert( [String]().bubbleSort2() == [], "Challenge 55 Failed")

print("Challenge Complete")


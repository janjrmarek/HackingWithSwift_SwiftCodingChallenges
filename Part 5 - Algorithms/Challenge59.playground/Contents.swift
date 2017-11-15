import UIKit

/*
 
 Challenge 59: Quicksort
 Difficulty: Tricky
 
 Create an extension for arrays that sorts them using the quicksort algorithm.

 Sample input and output
     • The array[12, 5, 4, 9, 3, 2, 1]should become[1, 2, 3, 4, 5, 9, 12].
     • The array ["f", "a", "b"] should become ["a", "b", "f"].
     • The array [String]() should become [].
 
 */

extension Array where Element: Comparable {
    
    func quicksort() -> [Element] {
        guard count > 1 else { return self }
        
        // pivot on the center of the array
        let pivot = self[count / 2]
        
        // 3 new 'buckets' that we'll sort ourselves into
        var before = [Element]()
        var after = [Element]()
        var equal = [Element]()
        
        // loop over all items, placing each one into a bucket by comparing against the pivot value
        for item in self {
            if item < pivot {
                before.append(item)
            } else if item > pivot {
                after.append(item)
            } else {
                equal.append(item)
            }
        }
        
        // call this function recursively then return the combined input
        return before.quicksort() + equal + after.quicksort()
    }
    
}

// Alternate Solution - using filter()
extension Array where Element: Comparable {
    
    func quicksort2() -> [Element] {
        guard count > 1 else { return self }
        

        let pivot = self[count / 2]

        var before = filter { $0 < pivot }
        var after = filter { $0 > pivot }
        var equal = filter { $0 == pivot }
        
        
        // call this function recursively then return the combined input
        return before.quicksort2() + equal + after.quicksort2()
    }
    
}

// Alternate Solution
//  • The function works entirely in place, so it’s a mutating method.
//  • It’s called using left and right parameters, which marks the array start and end position that’s being sorted. This will initially be 0 and the array length - 1.
//  • It picks a pivot at the end of the array, and also creates a variable that marks the point in the array that will store where items are greater than the pivot.
//  • It then loops through the array, counting from left to right. Again, initially that’s 0 and the array length - 1.
//  • If the current item being scanned is less than the pivot, it swaps them item with whatever is at the split point, then moves the split point up one place.
//  • Move the right parameter (that’s the one being used as our pivot) to the split point.
//  • Finally, call itself twice more, passing in the left-hand side first, then the right-hand side second.
extension Array where Element: Comparable {
    
    mutating func quicksort3(left: Int, right: Int) {
        // make sure we have a sensible range to work with
        guard left < right else { return }
        
        // use the right-hand element, because that's moved last
        let pivot = self[right]
        
        // set our split point – the marker where elements start being greater than the pivot – to be the left edge
        var splitPoint = left
        
        // count through all items in the array
        for i in left ..< right {
            // if this item is less than our pivot
            if self[i] < pivot {
                
                // move it so that it's at the split point
                (self[i], self[splitPoint]) = (self[splitPoint], self[i])
                
                // then move the split point forward one place
                splitPoint += 1
            }
        }
        
        // move our pivot item to the split point
        (self[right], self[splitPoint]) = (self[splitPoint],
                                           self[right])
        // recursively call this function on everything before the split...
        quicksort3(left: left, right: splitPoint - 1)
        
        // ...and everything after the split
        quicksort3(left: splitPoint + 1, right: right)
    }
    
}

// TESTING

// Solution 1
assert( [12, 5, 4, 9, 3, 2, 1].quicksort() == [1, 2, 3, 4, 5, 9, 12], "Challenge 59 Failed")
assert( ["f", "a", "b"].quicksort() == ["a", "b", "f"], "Challenge 59 Failed")
assert( [String]().quicksort() == [], "Challenge 59 Failed")

// Solution 2
assert( [12, 5, 4, 9, 3, 2, 1].quicksort2() == [1, 2, 3, 4, 5, 9, 12], "Challenge 59 Failed")
assert( ["f", "a", "b"].quicksort2() == ["a", "b", "f"], "Challenge 59 Failed")
assert( [String]().quicksort2() == [], "Challenge 59 Failed")

print("Challenge Complete")


import UIKit

/*
 
 Challenge 56: Insertion sort
 Difficulty: Easy
 
 Create an extension for arrays that sorts them using the insertion sort algorithm.

 Sample input and output
     • The array[12, 5, 4, 9, 3, 2, 1]should become[1, 2, 3, 4, 5, 9, 12].
     • The array ["f", "a", "b"] should become ["a", "b", "f"].
     • The array [String]() should become [].
 
 ** NOTE **
     • Insertion sort is always faster than bubble sort
     • In fact it’s the preferred choice of algorithm if you’re sorting small data sets
     • Swift’s own sort() call uses it if your collection contains fewer than 20 items.
 */

extension Array where Element: Comparable {
    
    func insertionSort() -> [Element] {
        guard count > 1 else { return self }
        
        let initialArray = self
        var returnArray = [Element]()
        
        for item in initialArray {
            if returnArray.isEmpty == true {
                returnArray.append(item)
            } else {
                for index in 0...returnArray.count - 1 {
                    if item < returnArray[index] {
                        returnArray.insert(item, at: index)
                        break
                    }
                }
            }
        }
        return returnArray
    }
}

// Alternate Solution - similar methodology
extension Array where Element: Comparable {
    
    func insertionSort2() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = [Element]()
        for unsorted in self {
            if returnValue.count == 0 {
                returnValue.append(unsorted)
            } else {
                var placed = false
                for (index, sorted) in returnValue.enumerated() {
                    if unsorted < sorted {
                        returnValue.insert(unsorted, at: index)
                        placed = true
                        break
                    }
                }
                if !placed {
                    returnValue.append(unsorted)
                }
            }
            
        }
        return returnValue
    }
}

// Alternate Solution - Sorting the array in place, about 2x faster than previous methods
extension Array where Element: Comparable {
    
    func insertionSort3() -> [Element] {
        guard count > 1 else { return self }
        
        var returnValue = self
        
        for i in 1 ..< count {
            
            var currentItemIndex = i
            
            // take a copy of the current item
            let itemToPlace = returnValue[currentItemIndex]
            
            // keep going around until at the start of the array or find an item that's greater or equal
            while currentItemIndex > 0 && itemToPlace < returnValue[currentItemIndex - 1] {
                
                    // move this item to the right
                    returnValue[currentItemIndex] = returnValue[currentItemIndex - 1]
                    currentItemIndex -= 1
            }
            // place item into its newly sorted place
            returnValue[currentItemIndex] = itemToPlace
        }
        return returnValue
    }
}

// TESTING

// Solution 1
assert( [12, 5, 4, 9, 3, 2, 1].insertionSort() == [1, 2, 3, 4, 5, 9, 12], "Challenge 56 Failed")
assert( ["f", "a", "b"].insertionSort() == ["a", "b", "f"], "Challenge 55 Failed")
assert( [String]().insertionSort() == [], "Challenge 55 Failed")

// Solution 2
assert( [12, 5, 4, 9, 3, 2, 1].insertionSort2() == [1, 2, 3, 4, 5, 9, 12], "Challenge 56 Failed")
assert( ["f", "a", "b"].insertionSort2() == ["a", "b", "f"], "Challenge 55 Failed")
assert( [String]().insertionSort2() == [], "Challenge 55 Failed")

// Solution 3
assert( [12, 5, 4, 9, 3, 2, 1].insertionSort3() == [1, 2, 3, 4, 5, 9, 12], "Challenge 56 Failed")
assert( ["f", "a", "b"].insertionSort3() == ["a", "b", "f"], "Challenge 55 Failed")
assert( [String]().insertionSort3() == [], "Challenge 55 Failed")

print("Challenge Complete")

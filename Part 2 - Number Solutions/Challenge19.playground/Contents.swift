import UIKit

/*
 Challenge 19: Swap two numbers
 Difficulty: Easy
 
 Swap two positive variable integers, a and b, without using a temporary variable.
 
 Sample input and output
 • Before running your code a should be 1 and b should be 2; afterwards, b should be 1 and a should be 2.
*/

// Solution 1 - using arithmetic
var a1 = 5, b1 = 10
print("----- Solution 1 -----")
print("START:  a = \(a1) b = \(b1)" )
a1 = a1 + b1
b1 = a1 - b1
a1 = a1 - b1
print("FINISH: a = \(a1) b = \(b1)" )

// Solution 2 - using XOR
var a2 = 5, b2 = 10
print("----- Solution 2 -----")
print("START:  a = \(a2) b = \(b2)" )
a2 = a2 ^ b2
b2 = a2 ^ b2
a2 = a2 ^ b2
print("FINISH: a = \(a2) b = \(b2)" )

// Solution 3 - using global swap() function
var a3 = 5, b3 = 10
print("----- Solution 3 -----")
print("START:  a = \(a3) b = \(b3)" )
swap(&a3, &b3)
print("FINISH: a = \(a3) b = \(b3)" )

// Solution 4 - using tuples
var a4 = 5, b4 = 10
print("----- Solution 4 -----")
print("START:  a = \(a4) b = \(b4)" )
(a4, b4) = (b4, a4)
print("FINISH: a = \(a4) b = \(b4)" )

print("----------------------")
print("Challenge Complete")

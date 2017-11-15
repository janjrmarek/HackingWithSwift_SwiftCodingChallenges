import UIKit

/*
 Challenge 16: Fizz Buzz
 Difficulty: Easy
 
 Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.
 
 Sample input and output
 • 1 should print “1”
 • 2 should print “2”
 • 3 should print “Fizz”
 • 4 should print “4”
 • 5 should print “Buzz”
 • 15 should print “Fizz Buzz”
*/

func fizzBuzz() {
    for i in 1...100 {
        if (i % 3 == 0) && (i % 5 == 0) {
            print("Fizz Buzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

// Alternate Solution - slight more efficient (don't evaluate i % 3 twice)
func fizzBuzz2() {
    for i in 1...100 {
        if i % 3 == 0 {
            if i % 5 == 0 {
                print("Fizz Buzz")
            } else {
                print("Fizz")
            }
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

// Alternate Solution - using forEach and ternary operators
func fizzBuzz3() {
    (1...100).forEach {
        print($0 % 3 == 0 ? $0 % 5 == 0 ? "Fizz Buzz" : "Fizz" : $0 % 5 == 0 ? "Buzz" : "\($0)")
    }
}

// Testing
fizzBuzz()
// Solution 2
print("***************** TESTING SOLUTION 2 ********************")
fizzBuzz2()
// Solution 3
print("***************** TESTING SOLUTION 3 ********************")
fizzBuzz3()

print("Challenge Complete")

import UIKit

/*
Challenge 22: Binary reverse
Difficulty: Tricky
 
Create a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded so that it holds precisely eight binary digits.
 
Tip: When you get the binary representation of a number, Swift will always use as few bits as possible – make sure you pad to eight binary digits before reversing.
 
Sample input and output:
 
 • The number 32 is 100000 in binary, and padded to eight binary digits that’s 00100000. Reversing that binary sequence gives 00000100, which is 4. So, when given the input 32 your function should return 4.
 • The number 41 is 101001 in binary, and padded to eight binary digits that 00101001. Reversing that binary sequence gives 10010100, which is 148. So, when given the input 41 your function should return 148.
 • It should go without saying that your function should be symmetrical: when fed 4 it should return 32, and when fed 148 it should return 41.
*/

func binaryReverse(number: UInt) -> UInt {
    var inputBinary = String(number, radix: 2)
    var inputBinaryReversed = String(inputBinary.reversed())
    for _ in 0..<(8 - inputBinary.characters.count) {
        inputBinaryReversed.append("0")
    }
    return UInt(strtoul(inputBinaryReversed, nil, 2))
}

// Alternate Solution
func binaryReverse2(number: UInt) -> UInt {
    let binary = String(number, radix: 2)
    let paddingAmount = 8 - binary.count
    let paddedBinary = String(repeating: "0", count:
        paddingAmount) + binary
    let reversedBinary = String(paddedBinary.reversed())
    return UInt(reversedBinary, radix: 2)!
}

// TESTING

// Solution 1
assert(binaryReverse(number: 32) == 4, "Challenge 22 Failed")
assert(binaryReverse(number: 41) == 148, "Challenge 22 Failed")
assert(binaryReverse(number: 4) == 32, "Challenge 22 Failed")
assert(binaryReverse(number: 148) == 41, "Challenge 22 Failed")

// Solution 2
assert(binaryReverse2(number: 32) == 4, "Challenge 22 Failed")
assert(binaryReverse2(number: 41) == 148, "Challenge 22 Failed")
assert(binaryReverse2(number: 4) == 32, "Challenge 22 Failed")
assert(binaryReverse2(number: 148) == 41, "Challenge 22 Failed")

print("Challenge Complete")

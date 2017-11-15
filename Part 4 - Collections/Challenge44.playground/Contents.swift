import UIKit

/*
 
 Challenge 44: Linked list mid-point
 Difficulty: Easy
 
 Extend your linked list class with a new method that returns the node at the mid point of the linked list using no more than one loop.

 If the linked list contains an even number of items, returning the one before or the one after the center is acceptable.
 
 Sample input and output
     • If the linked list contains 1, 2, 3, 4, 5, your method should return 3.
     • If the linked list contains 1, 2, 3, 4, your method may return 2 or 3.
     • If the linked list contains the English alphabet, your method may return M or N.
 
*/

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var start: LinkedListNode<T>?
    
    var centerNode: LinkedListNode<T>? {
        var slow = start
        var fast = start
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
    
    func printNodes() {
        var currentNode = start
        while let node = currentNode {
            print(node.value, terminator: " ")
            currentNode = node.next
        }
    }
}

// Creating & populating linked list for test 1
var listAlphabet = LinkedList<Character>()
var previousNodeAlphabet: LinkedListNode<Character>? = nil

for letter in "abcdefghijklmnopqrstuvwxyz" {
    let node = LinkedListNode(value: letter)
    if let predecessor = previousNodeAlphabet {
        predecessor.next = node
    } else {
        listAlphabet.start = node
    }
    previousNodeAlphabet = node
}

// Creating & populating linked list for test 2
var listOneToFive = LinkedList<Int>()
var previousNodeOneToFive: LinkedListNode<Int>? = nil

for number in [1,2,3,4,5] {
    let node = LinkedListNode(value: number)
    if let predecessor = previousNodeOneToFive {
        predecessor.next = node
    } else {
        listOneToFive.start = node
    }
    previousNodeOneToFive = node
}

// TESTING

assert(listAlphabet.centerNode!.value == "n", "Challenge 44 Failed")
assert(listOneToFive.centerNode!.value == 3, "Challenge 44 Failed")

print("Challenge Complete")


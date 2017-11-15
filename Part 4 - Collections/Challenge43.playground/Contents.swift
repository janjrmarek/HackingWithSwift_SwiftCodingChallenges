import UIKit

/*
 
 Challenge 43: Linked lists
 Difficulty: Easy
 
 Create a linked list of lowercase English alphabet letters, along with a method that traverses all nodes and prints their letters on a single line separated by spaces.

 Sample input and output
     • The output of your code should be the English alphabet printed to the screen, i.e. “a b c d ... x y z”.
 
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
    
    func printNodes() {
        var currentNode = start
        while let node = currentNode {
            print(node.value, terminator: " ")
            currentNode = node.next
        }
    }
}

var list = LinkedList<Character>()
var previousNode: LinkedListNode<Character>? = nil

for letter in "abcdefghijklmnopqrstuvwxyz" {
    let node = LinkedListNode(value: letter)
    if let predecessor = previousNode {
        predecessor.next = node
    } else {
        list.start = node
    }
    previousNode = node
}

list.printNodes()

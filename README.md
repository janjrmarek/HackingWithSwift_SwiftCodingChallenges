# Hacking With Swift - Swift Coding Challenges
This repo contains my solutions to the problem sets contained in "Hacking with Swift - Swift Coding Challenges"

![](art/hwscover.png?raw=true)
## Sections
(1 - Strings)
(2 - Numbers)
(3 - Files)
(4 - Collections)
(5 - Algorithms)

## Part 1 - Strings
Problem # | Solution | Description
| ------------- | ------------- | ------------- 
| 1. Are the letters unique?| [My Solution](Part%201%20-%20String%20Solutions/Challenge1.playground)|Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.|
| 2. Is a string a palindrome?|[My Solution](Part%201%20-%20String%20Solutions/Challenge2.playground)|Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.|
| 3. Do two strings contain the same characters?|[My Solution](Part%201%20-%20String%20Solutions/Challenge3.playground)|Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.|
| 4. Does one string contain another?|[My Solution](Part%201%20-%20String%20Solutions/Challenge4.playground)|Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.|
| 5. Count the characters|[My Solution](Part%201%20-%20String%20Solutions/Challenge5.playground)|Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.| 
| 6. Remove duplicate letters from a string|[My Solution](Part%201%20-%20String%20Solutions/Challenge6.playground)|Write a function that accepts a string as its input, and returns the same string just withduplicate letters removed.|
| 7. Condense whitespace|[My Solution](Part%201%20-%20String%20Solutions/Challenge7.playground)|Write a function that returns a string with any consecutive spaces replaced with a single space.| 
| 8. String is rotated|[My Solution](Part%201%20-%20String%20Solutions/Challenge8.playground)|Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.|
| 9. Find pangrams|[My Solution](Part%201%20-%20String%20Solutions/Challenge9.playground)|Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.| 
| 10. Vowels and consonants|[My Solution](Part%201%20-%20String%20Solutions/Challenge10.playground)|Given a string in English, return a tuple containing the number of vowels and consonants.|
| 11. Three different letters|[My Solution](Part%201%20-%20String%20Solutions/Challenge11.playground)|Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.| 
| 12. Find longest prefix|[My Solution](Part%201%20-%20String%20Solutions/Challenge12.playground)|Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.|
| 13. Run-length encoding|[My Solution](Part%201%20-%20String%20Solutions/Challenge13.playground)|Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.| 
| 14. String permutations|[My Solution](Part%201%20-%20String%20Solutions/Challenge14.playground)|Write a function that prints all possible permutations of a given input string.|
| 15. Reverse the words in a string|[My Solution](Part%201%20-%20String%20Solutions/Challenge15.playground)|Write a function that returns a string with each of its words reversed but in the original order, without using a loop.| 
## Part 2 - Numbers
Problem # | Solution | Description 
| ------------- | ------------- |  ------------- 
| 16. Fizz Buzz|[My Solution](Part%202%20-%20Number%20Solutions/Challenge16.playground)| Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases. |
| 17. Generate a random number in a range|[My Solution](Part%202%20-%20Number%20Solutions/Challenge17.playground)|Write a function that accepts positive minimum and maximum integers, and returns a random number between those two bounds, inclusive.|
| 18. Recreate the pow() function|[My Solution](Part%202%20-%20Number%20Solutions/Challenge18.playground)| Create a function that accepts positive two integers, and raises the first to the power of the second.|
| 19. Swap two numbers|[My Solution](Part%202%20-%20Number%20Solutions/Challenge19.playground)|Swap two positive variable integers, a and b, without using a temporary variable.|
| 20. Number is prime|[My Solution](Part%202%20-%20Number%20Solutions/Challenge20.playground)|Write a function that accepts an integer as its parameter and returns true if the number is prime.|
| 21. Counting binary ones|[My Solution](Part%202%20-%20Number%20Solutions/Challenge21.playground)|Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.|
| 22. Binary reverse|[My Solution](Part%202%20-%20Number%20Solutions/Challenge22.playground)| Create a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded so that it holds precisely eight binary digits.| 
| 23. Integer disguised as string|[My Solution](Part%202%20-%20Number%20Solutions/Challenge23.playground)|Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.|
| 24. Add numbers inside a string|[My Solution](Part%202%20-%20Number%20Solutions/Challenge24.playground)|Given a string that contains both letters and numbers, write a function that pulls out all the numbers then returns their sum.| 
| 25. Calculate a square root by hand|[My Solution](Part%202%20-%20Number%20Solutions/Challenge25.playground)|Write a function that returns the square root of a positive integer, rounded down to the nearest integer, without using sqrt().|
| 26. Subtract without subtract|[My Solution](Part%202%20-%20Number%20Solutions/Challenge26.playground)|Create a function that subtracts one positive integer from another, without using -.|
## Part 3 - Files
## Part 4 - Collections
Problem # | Solution | Description 
| ------------- | ------------- |  ------------- 
| 37. Count the numbers|[My Solution](Part%204%20-%20Collections/Challenge37.playground)|Write an extension for collections of integers that returns the number of times a specific digit appears in any of its numbers.|
| 38. Find N smallest|[My Solution](Part%204%20-%20Collections/Challenge38.playground)|Write an extension for all collections that returns the N smallest elements as an array, sorted smallest first, where N is an integer parameter.|
| 39. Sort a string array by length|[My Solution](Part%204%20-%20Collections/Challenge39.playground)|Extend collections with a function that returns an array of strings sorted by their lengths, longest first.|
| 40. Missing numbers in array|[My Solution](Part%204%20-%20Collections/Challenge40.playground)|Create a function that accepts an array of unsorted numbers from 1 to 100 where zero or more numbers might be missing, and returns an array of the missing numbers.|
| 41. Find the median|[My Solution](Part%204%20-%20Collections/Challenge41.playground)|Write an extension to collections that accepts an array of Int and returns the median average, or nil if there are no values.|
| 42. Recreate index(of:)|[My Solution](Part%204%20-%20Collections/Challenge42.playground)|Write an extension for all collections that reimplements the index(of:) method.|
| 43. Linked lists|[My Solution](Part%204%20-%20Collections/Challenge43.playground)|Create a linked list of lowercase English alphabet letters, along with a method that traverses all nodes and prints their letters on a single line separated by spaces.|
| 44. Linked list mid-point|[My Solution](Part%204%20-%20Collections/Challenge44.playground)|Extend your linked list class with a new method that returns the node at the mid point of the linked list using no more than one loop.|
| 45. | | |
| 46. | | |
| 47. | | |
| 48. | | |
| 49. | | |
| 50. | | |
| 51. | | |
| 52. | | |
| 53. | | |
| 54. | | |
## Part 4 - Algorithms
Problem # | Solution | Description 
| ------------- | ------------- |  ------------- 
| 55. Bubble sort|[My Solution](Part%205%20-%20Algorithms/Challenge55.playground)|Create an extension for arrays that sorts them using the bubble sort algorithm.|
| 56. Insertion sort|[My Solution](Part%205%20-%20Algorithms/Challenge56.playground)|Create an extension for arrays that sorts them using the insertion sort algorithm.|
| 57. Isomorphic values|[My Solution](Part%205%20-%20Algorithms/Challenge57.playground)|Write a function that accepts two values and returns true if they are isomorphic. That is, each part of the value must map to precisely one other, but that might be itself.|
| 58. Balanced brackets|[My Solution](Part%205%20-%20Algorithms/Challenge58.playground)|Write a function that accepts a string containing the characters (, [, {, <, >, }, ], and ) in any arrangement and frequency. It should return true if the brackets are opened and closed in the correct order, and if all brackets are closed. Any other input should false.|
| 59. Quicksort|[My Solution](Part%205%20-%20Algorithms/Challenge59.playground)|Create an extension for arrays that sorts them using the quicksort algorithm.|
| 60. | | |
| 61. | | |
| 62. | | |
| 63. | | |
| 64. | | |

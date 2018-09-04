//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


extension Collection {
    var lastValidIndex: Index {
        return self.index(self.endIndex, offsetBy: -1)
    }
}


func isPalindrome(_ string: String) -> Bool {
    for (i, character) in string.enumerated() {
        if character != string[string.index(string.lastValidIndex, offsetBy: -(i))] {
            return false
        }
    }
    return true
}
isPalindrome(str)
isPalindrome("racecar")



let intArray = [0, 2, 4 , 6, 8]

intArray.lastValidIndex

print(str.startIndex.encodedOffset)
print(str.lastValidIndex.encodedOffset)

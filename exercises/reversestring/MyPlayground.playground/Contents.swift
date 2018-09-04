//: Playground - noun: a place where people can play

import UIKit


func reverseString(_ string: String) -> String {
    var reversed = ""
    for c in string {
        reversed.insert(c, at: reversed.index(reversed.startIndex, offsetBy: 0))
    }
    return reversed
}


reverseString("racecar")
reverseString("jon")
reverseString("Thais Vogel")

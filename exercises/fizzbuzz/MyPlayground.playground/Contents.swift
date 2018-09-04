//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func fizBuzz(_ array: [Int]) {
    for item in array {
        if item % 3 == 0 && item % 5 == 0 {
            print("Fizzbuzz")
        }else if item % 3 == 0 {
            print("Fizz")
        }else if item % 5 == 0 {
            print("Buzz")
        }else {
            print(item)
        }
    }
}


let array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

fizBuzz(array)

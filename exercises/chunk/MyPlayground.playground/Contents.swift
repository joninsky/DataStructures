//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func chunk(_ array: [Any], size: Int) -> [[Any]] {
    var arrayToBuild = [[Any]]()
    var tempArray = [Any]()
    for item in array {
        tempArray.append(item)
        if tempArray.count == size {
            arrayToBuild.append(tempArray)
            tempArray.removeAll()
        }
    }
    arrayToBuild.append(tempArray)
    return arrayToBuild
}

chunk([1,2,3,4,5,6,7], size: 5)

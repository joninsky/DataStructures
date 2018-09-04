//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



extension Int {
    /// Function that solves the Reverse value problem on Intergers
    ///
    /// - Returns: The value of this INT but reversed.
    func reversed() -> Int {
        //Store if the value is negative or not
        let isNegative = (self.signum() == -1) ? true: false
        //Get the absolute value
        let absoluteValue = abs(self)
        //Turn the absolute value into a string value
        let stringValue = String(absoluteValue)
        //Reverse that string
        let reversedStringValue = String(stringValue.reversed())
        //Turn that string into an interger. Since we stripped the '-' by calling absolute value from the original interger this will represent the absolute value of the reversed interger
        let reversedAbsoluteValue = Int(reversedStringValue) ?? 0
        //Now we inspect if the original value was negative or not. If it was we return the negative value of the 'reversedAbsoluteValue'. Otherwise return the 'reversedAbsoluteValue'
        let reversedSignedValue = (isNegative == true ? -(reversedAbsoluteValue) : reversedAbsoluteValue)
        //Return the reversed signed value out of the function
        return reversedSignedValue
    }
}

let numbers = [51, 189, 5, -51, -9]

for n in numbers {
    print(n.reversed())
}

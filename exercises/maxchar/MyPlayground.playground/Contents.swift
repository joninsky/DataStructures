//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


extension String {
    /// Returns the character that has the most occurances in that string.
    ///
    /// - Returns: The Character that appears the most in this string.
    func maxChar() -> Character {
        //Create a dictionary that we will bucket the count of each character into
        var buckets: [Character: Int] = [:]
        for (_ , char) in self.enumerated() {
            //See if we have that key yet
            if let valueInBucket = buckets[char] {
                //If we do then increment the value in the bucket by one
                let incrementedValue = valueInBucket + 1
                //Update the bucket
                buckets[char] = incrementedValue
            }else {
                //If the key value pair did not exist before then give it a value of 1
                buckets[char] = 1
            }
        }
        
        //Get a variable to hold the largest discovered character
        var largestDiscoveredCharacter: Character = Character(" ")
        //Get a variable to hold the largest discovered bucket
        var largestDiscoveredBucket = 0
        
        //Loop through all the buckets
        for bucket in buckets {
            //If the value in the current bucket is greater then the currently discovered largest value then replace both the character and largest discovered value.
            if bucket.value > largestDiscoveredBucket {
                largestDiscoveredBucket = bucket.value
                largestDiscoveredCharacter = bucket.key
            }
        }
        
        //Return the largest discovered character.
        return largestDiscoveredCharacter
        
    }
}

let testStrings = ["doooooog", "01111234", "abbbbbccdd"]

for item in testStrings {
    print(item.maxChar())
}


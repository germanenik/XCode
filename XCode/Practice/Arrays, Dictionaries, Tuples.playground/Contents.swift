//: Playground - noun: a place where people can play

import Cocoa

//arrays
let array1: [Int] = []
let array2 = [Int]()

var array3 = ["I", "Am", "German"]
//methods: .append(), .remove(), .insert(), count
//print(array3[0])

for s in array3{
    print(s + " ", terminator:"")
}

print(array3)

//Dictionaries - no particular order
let emptyDic = [Int: Int]()
let alsoEmptyDic: [Int: Int] = [:]

let dic = ["German": 18, "Oleg": 18, "Natalia": 25]
for entry in dic {
    print(entry.0 + " is \(entry.1) years old")
} //can also iterate using a tuple

//Tuples
let myTuple = (2, 2)
let myNamedTuple = (x: 0, y: 0)
print(myTuple.0 + myTuple.1) // = 4
print(myNamedTuple.x + myNamedTuple.y) // = 0



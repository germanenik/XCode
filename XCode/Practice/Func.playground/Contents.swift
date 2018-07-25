//: Playground - noun: a place where people can play

import Cocoa
import Foundation

//Functions

func sample(externalV internalV: Int) -> Int {
    return internalV * 2
}

print(sample(externalV: 2))

//multiple return values: return a tuple
func heronQ(side1 a: Int, side2 b: Int, side3 c: Int, side4 d: Int)
    -> (area: Double, perimeter: Int) {
        let s = (a + b + c + d) / 2
        let mult = (s - a) * (s - b) * (s - c) * (s - d)
        return (sqrt(Double(mult)), s * 2)
}

//note: swift doesn't like too complex expressions
//break them down into multiple ones

print("Area of the quadri: \(heronQ(side1: 5, side2: 3, side3: 6, side4: 4).area)")
print("Perimeter of the quadri: \(heronQ(side1: 5, side2: 3, side3: 6, side4: 4).perimeter)")

let myQuadrilateral = heronQ(side1: 5, side2: 3, side3: 6, side4: 4)

print(myQuadrilateral.area)

//can omit an external argument by using _

//deafault parameters: make the last parameter equal to something

//variadic - as many parameters as you want!

func mySentence(_ strs: String...) -> String? {
    var sentence = ""
    for s in strs {
        if !strs.isEmpty {
            sentence += (s + " ")
        } else {
            return nil
        }
    }
    return sentence
}

print(mySentence("Hey", "There,", "Bitch!") ?? "N/A")

//put an ampresand in front of an internal parameter to make it in-out
//taken in by the func, can be modified, and given out by the func

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var first = 1
var second = 2
swapTwoInts(&first, &second)
print("\(first) \(second)")

//can set functions equal to each other or make a new name for them
//can also be nested!


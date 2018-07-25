//: Playground - noun: a place where people can play

import Cocoa

//operators like &+, &-, and &* are the three overflow operators bc swift does not
//automatically truncate numbers if they are too big

//print( (2,3) < (1, 4))

//ternary operator
let goodday = true
var mood = "My mood is \(goodday ? "good" : "bad" )"
//shortcut for
if goodday {
    mood = "My mood is good"
}else{
    mood = "My mood is bad"
}

//nil-coalescing operator => a ?? b
//shortcut for a != nil ? a : b
// or for
/* if a != nil {
 a
 } else {
 b
 }
 */

//range: a...b
var answer = 1
for i in 1...5 {
    answer *= i
}

//half open range, useful in arrays
for i in 1..<5 {
    answer *= i
}

//open sided range: a... ...b ..<b


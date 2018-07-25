//: Playground - noun: a place where people can play

import Cocoa

//for in loops

let array = [1, 2, 3, 4, 5]
var sum: Int = 0

for num in array {
    sum += num
}

for _ in 1...5 { //when u don't need a value, just use an underscore
    sum += 1
}

//to have a loop like a reg for loop in java (so cam skip over), use stride
sum = 0
for a in stride(from: 0, through: 10, by: 2) { //can use to instead of through
    sum += a
}

//while loop

var a = 5
sum = 0

while a > 0 {
    sum += a
    a -= 1
}

repeat {
    sum += a
    a += 1
} while a < 5

//switch

let letter = "S"

switch letter.uppercased(){
case "A":
    print("First letter of the alphabet")
case "Z":
    print("Last letter of the alphabet")
default:
    print("Some other letter")
}

//can use where after case to specify, for ex:

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

//control transfer statements
//continue - stop the current iteration of a loop and go on to the next one
//break - stop execution of loop/switch immediately and go to the code after }
//fallthrough - for switch statements, if want code to go to the next case after
//              a successful case
//throw -
//return

//labels go in the beginnings

myLoop: for a in 1...10 {
    sum += a
    if a == 5 {
        break myLoop
    }
}

//check available APIs
if #available(iOS 10, *){
    //bla bla
}

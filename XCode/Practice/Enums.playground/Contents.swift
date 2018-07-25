//: Playground - noun: a place where people can play

import Cocoa

//this playground is for enums
//kind of like classes and objects in java, but more 'local'?

enum Season: Int {
    case winter = 0
    case fall
    case summer
    case spring
}

var currentSeason: Season = .spring

switch currentSeason{
case .winter:
    print("It's so cold out here!")
case .spring:
    print("My favorite season!")
case .summer:
    print("Let's go to the beach!")
case .fall:
    print("Leaves are falling...")
}



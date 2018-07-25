//: Playground - noun: a place where people can play

import Cocoa

//variable might not have a value, so
var name: String?
//this way it can be set to an actual name or nil

//if sure there's a value, can force unwrap. bad habit tho
name = "German"
print(name!)

//optional binding. first name exists only in the if statement
if let name = name {
    print(name)
}

//can also do this:
name  = nil
(name != nil) ? print(name!) : print("Anonymous")


var newName: String!
newName = "GeraAaA"
newName?[newName.startIndex..<newName.index(newName.endIndex, offsetBy: -3)]





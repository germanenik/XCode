//: Playground - noun: a place where people can play
//HAVE TO CAST EVERYTHING MYSELF

import Cocoa

let name: String
name = "German"
let s = "Hello, my name is \(name)"
let s1 = "Hello, my name is " + name

let empty = s1.isEmpty //empty = false

//for char in "Bitch" {
//    print(char)
//}

//casting
let num: Int = 5
//print("The answer is " + String(5), terminator: "")
//print(" worked?") //yes

let (a, b, c) = (1, 2, "hi") //tuple

if a < b {
    print("hi")
}

let bigString = """
hey there \
you \
all
"""

var cat = ""
let charArray: [Character] = ["C", "A", "T"]
for letter in charArray[0...]{
//    cat += String(letter)
    cat.append(letter) // appends a character
}

//several unicode characters can make up one cluster (thing of hieroglyphics)
let enclosedEAcute = "a\u{20DD}"

//counting: use .count
cat.count
cat += "\u{301}"
cat.count

//indeces
var word = "German Shabanets"
let index = word.startIndex
word[index]
word[word.index(word.startIndex, offsetBy: 7)]
word[word.index(of: "G")!]
word[word.index(word.endIndex, offsetBy: -4)]

let specialWord = "ép"
specialWord[word.startIndex]

word.indices //range of values
//useful methods: .insert(), .remove(), .removeSubrange(), .append()

word.insert(contentsOf: " I", at: word.index(word.startIndex, offsetBy: 6))

var newWord = ""
newWord = String(word[word.startIndex...word.index(word.startIndex, offsetBy: 5)])
newWord += String(word[word.index(word.endIndex, offsetBy: -10)..<word.endIndex])
let range = word.index(of: "I")!..<word.index(of: "S")!
word.removeSubrange(range)
newWord = word

//substring: word[range]
word.remove(at: word.index(word.startIndex, offsetBy: 6))
let substring = String(word[word.startIndex..<(word.index(of: " ") ?? word.endIndex)])

//word.hasPrefix("prefix"), word.hasSuffix("prefix")




//: Playground - noun: a place where people can play

import Cocoa

//protocol is like an interface in Java
//unites objects of different types by their common characteristic
//classes that inherit it must have the methods in them


protocol Postable {
    func post()
    func post(message: String)
}

//an image, a video, a tweet can be posted

class Image: Postable {
    
    let filter = "none"
    
    func post(){
        print("Your image was posted")
    }
    
    func post(message: String) {
        print("Your image and caption were posted")
    }
}

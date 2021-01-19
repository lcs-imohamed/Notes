//: [Previous](@previous)

import Foundation

//INITIALIZERS
//Initializers are special methods that provide different ways of to create struct

struct User {
    var username: String
}

//Must provide username
var user = User(username: "twostraws")

//Add initializer
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"


//REFERRING TO THE CURRENT INSTANCE
//Inside methods special constant called self which points to whatever instance of the struct is currently being used

//Self.name refers to property whereas name refers to parameter
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}



//: [Next](@next)

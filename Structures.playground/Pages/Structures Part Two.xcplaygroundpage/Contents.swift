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



//: [Next](@next)

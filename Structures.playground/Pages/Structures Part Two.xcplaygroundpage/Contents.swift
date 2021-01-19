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

//LAZY PROPERTIES
//Properties that are only created when needed

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
//Adding the lazy keyword will cause property to only create struct when it's first accessed
lazy var familyTree = FamilyTree()


//: [Next](@next)

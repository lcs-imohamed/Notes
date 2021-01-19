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

ed.familyTree


//STATIC PROPERTIES AND METHODS

struct Student {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

//Declaring properties as static allows Swift to share specific properties and methods across all instances of struct

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
//Since classSize belongs to the struct rather than instances of struct it is read using student.classSize

print(Student.classSize)

//ACCESS CONTROL
//helps to restrict which code can use properties and methods
//important because it could stop people from a property directly

struct Person {
    var id: String

    init(id: String) {
        self.id = id
    }
}

let ed = Person(id: "12345")

//Use private key word

struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }
}

//Only methods inside person can read id

struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}



//: [Next](@next)

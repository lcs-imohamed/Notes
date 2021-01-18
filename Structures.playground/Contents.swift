import Cocoa

// CREATING STRUCTS
//Sport struct with property (variable)

struct Sport {
    var name: String
}
//Define type
var tennis = Sport(name: "Tennis")
print(tennis.name)
//Change variable
tennis.name = "Lawn tennis"

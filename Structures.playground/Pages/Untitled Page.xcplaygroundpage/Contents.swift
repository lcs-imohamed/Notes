import Cocoa

// CREATING STRUCTS
//Sport struct with property (variable)

//struct Sport {
//    var name: String
//}
//Define type
//var tennis = Sport(name: "Tennis")
//print(tennis.name)
//Change variable
//tennis.name = "Lawn tennis"

//COMPUTED PROPERTIES
//Create sport struct
//struct Sport {
//    var name: String
//}
//Add stored property and computed property to struct
//Stored properties store a string. Computed property runs code to figure out its value.
//struct Sport {
//    var name: String
//    var isOlympicSport: Bool
//
//    var olympicStatus: String {
//        if isOlympicSport {
//            return "\(name) is an Olympic sport"
//        } else {
//            return "\(name) is not an Olympic sport"
//        }
//    }
//}
//Create new instance of sport
//let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
//print(chessBoxing.olympicStatus)

//PROPERTY OBSERVERS
//Property observers let you run code before or after any property changes.
//Create a struct that tracks a task and a completion percentage
//struct Progress {
//    var task: String
//    var amount: Int
//}
//Create instance of struct and adjust progress over time
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
//Run code when amount changes
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
//Can also use willSet to take action before a property changes

//METHODS
//Functions inside structs are methods
//Struct city with population property, collect taxes method

//struct City {
//    var population: Int
//
//    func collectTaxes() -> Int {
//        return population * 1000
//    }
//}
//let london = City(population: 9_000_000)
//london.collectTaxes()

//MUTATING METHODS
//In order to change a property inside a method use mutating key word
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()

//PROPERTIES AND METHODS OF STRINGS
//Test string
let string = "Do or do not, there is no try."

//Read number of characters using count property
print(string.count)

//Method returns true if string starts with specific letters
print(string.hasPrefix("Do"))

//Uppercase string
print(string.uppercased())

//Sort letters of string into array
print(string.sorted())

//Properties and methods of arrays

var toys = ["Woody"]

//Read number of items with count property
print(toys.count)

//Append to add a new item
toys.append("Buzz")

//Locate item in array
toys.firstIndex(of: "Buzz")

//Sort arrays alphabetically
print(toys.sorted())

//Remove item
toys.remove(at: 0)

//SUMMARY
//You can create your own types using structures, which can have their own properties and methods.
//You can use stored properties or use computed properties to calculate values on the fly.
//If you want to change a property inside a method, you must mark it as mutating.

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



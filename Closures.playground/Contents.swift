import Cocoa

var str = "Hello, playground"

//CREATING BASIC CLOSURES
//Creates a function without a name and assigns it to driving

//let driving = {
//    print("I'm driving in my car")
//}
//Calls driving function

//driving()

//ACCEPTING PARAMETERS
//To make a closure accept parameters, list them inside parentheses and then write in so  Swift knows closure is starting

//let driving = { (place: String) in
//    print("I'm going to \(place) in my car")
//}

//Don't use parameter labels when running closures
//driving("London")

//RETURNING VALUES
//Original
//let driving = { (place: String) in
//    print("I'm going to \(place) in my car")
//}

//Returns a string instead of printing directly
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//Runs closure
let message = drivingWithReturn("London")
print(message)

//CLOSURES AS PARAMETERS

let driving = {
    print("I'm driving in my car")
}

//Use void to pass closure into function
//Travel function accepts different kinds of travelling actions
//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}

//Call using closure
//travel(action: driving)

//TRAILING CLOSURE SYNTAX
//If  last parameter to a function is a closure,use special syntax called trailing closure syntax. Rather than pass in your closure as a parameter,  pass it directly after the function inside braces

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
//Call travel using trailing closure syntax
travel() {
    print("I'm driving in my car")
}
//No other closures so can eliminate parentheses
travel {
    print("I'm driving in my car")
}

//SUMMARY
//You can assign closures to variables, then call them later on.
//Closures can accept parameters and return values, like regular functions.
//You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
//If the last parameter to your function is a closure, you can use trailing closure syntax.

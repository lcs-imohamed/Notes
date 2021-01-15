//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//CLOSURES WITH MULTIPLE PARAMETERS
//Closure requires two parameters: where the person is going and the speed they are travelling at

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
//Uses shorthand parameter names for the two parameters ($0 and $1)

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

//RETURNING CLOSURES FROM FUNCTIONS
//Travel function that accepts no parameters, but returns a closure. The closure that is returned must be called with a string and will return nothing

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

//USING CLOSURES AS PARAMETERS WHEN THEY ACCEPT PARAMETERS
//A closure you pass into a function can also accept its own parameters.

//function that accepts a closure as its only parameter

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//USING CLOSURES AS PARAMETERS WHEN THEY RETURN VALUES
//Void used to mean “accepts no parameters and returns nothing”, but can replace that Void with any type of data to force the closure to return a value

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//SHORTHAND PARAMETER NAMES

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//Calling travel function without shorthand
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//Calling travel function with shorthand
travel {
    "I'm going to \($0) in my car"
}

//SUMMARY
//You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
//If the last parameter to your function is a closure, you can use trailing closure syntax.
//Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.







//: [Next](@next)

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



//: [Next](@next)

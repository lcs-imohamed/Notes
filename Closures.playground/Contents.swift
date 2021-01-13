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

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

//Don't use paramter labels when running closures
driving("London")

import Cocoa

var str = "Hello, playground"


//Writing functions, you must include "func", curly brackets and also note that functions are case sensitive

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    
    print(message)
}
printHelp()

//ACCEPTS PARAMETERS

//This code tells swift to expect an value of type int. It's important to give a value that matches the expected type.

//func square(number: Int) {
//    print(number * number)
//}
////square(number: 8)
//
//Example of a function that returns values

//Again set type matches return type in this case int

//func square(number: Int) -> Int {
//    return number * number
//}
//let result = square(number: 8)
//print(result)

//PARAMETER LABELS
//Helps to give parameters different names although it is important to use those names when running the function.

func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)

//OMMITTING PARAMETER LABELS
//Helps make code easier to read, but can cause some confusion and it's therefore better to give the parameters proper names.

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

//DEFAULT PARAMETERS
//This function can be used to create a default parameter

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
//Can be called in two different ways

greet("Taylor")
greet("Taylor", nicely: false)

//VARIADIC PARAMETERS
//Accept any number of parameters of the same type

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
//Can now run with multiple numbers of the same type by separating them with commas

square(numbers: 1, 2, 3, 4, 5)

//THROWING FUNCTIONS
//Throwing functions throw errors when something goes wrong
//Example: this function checks whether or not a password is good

enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//RUNNING THROWING FUNCTIONS
//Functions must be called using do, try, and catch

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//INOUT PARAMETERS
//Can change parameters by passing them in and out.
//Example: this code allows us to double a number in place.

func doubleInPlace(number: inout Int) {
    number *= 2
}

//This is used as explicit recognition that you're aware it is being used as inout

var myNum = 10
doubleInPlace(number: &myNum)

//SUMMARY
//Functions let us re-use code without repeating ourselves.
//Functions can accept parameters – just tell Swift the type of each parameter.
//Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
//You can use different names for parameters externally and internally, or omit the external name entirely.
//Parameters can have default values, which helps you write less code when specific values are common.
//Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
//Functions can throw errors, but you must call them using try and handle errors using catch.
//You can use inout to change variables inside a function, but it’s usually better to return a new value.




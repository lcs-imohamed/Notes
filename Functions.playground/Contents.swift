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

//Example of a function that accepts parameters

//This code tells swift to expect an value of type int
func square(number: Int) {
    print(number * number)
}
square(number: 8)



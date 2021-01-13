//: [Previous](@previous)

import Foundation

// Define an enumeration that lists types of password errors
enum PasswordError: Error {
    case obvious
    case needsUppercase
}

// Perform a security check on a given password
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    } else if password == password.lowercased() {
        // If the password was "secret" then it will equal "secret".lowercased()
        // If the password was "sEcREt" then it will not equal "sEcREt".lowercased()
        throw PasswordError.needsUppercase
    }

    return true
}

// Try out a password to see if it is secure
do {
    try checkPassword("1234")
    print("That password is good!")
} catch PasswordError.obvious {
    print("You can't use that password because it is too easy to guess.")
} catch PasswordError.needsUppercase {
    print("You can't use that password because it contains no uppercase characters.")
} catch {
    // NOTE: Not a great error message; we try to be specific
    print("You can't use that password.")
}

//: [Next](@next)

import Cocoa


enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String { //If a function is able to throw errors without handling them itself, you must mark the function as throws before the return type.
    
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let passwrd = "12345"

do {
    let result = try checkPassword(passwrd)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

/**
 Using Swift’s throwing functions relies on three unique keywords: do, try, and catch. We need all three to be able to call a throwing function, which is unusual – most other languages use only two, because they don’t need to write try before every throwing function.
 */



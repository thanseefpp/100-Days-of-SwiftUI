import Cocoa

let opposites = ["value1":"thanseef","value2":"thameem","value3":"thaju","value4":"sabi"]


if let marioOpposites = opposites["value1"]{
    print("Mario's opposites is \(marioOpposites)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
if let unwrappedNumber = number { // use understandable variable names.
    print(square(number: unwrappedNumber))
}


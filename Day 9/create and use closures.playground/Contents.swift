import Cocoa

// repeat tge closure method .



func greetUser() {
    print("Hi there!")
}

greetUser()

//var greetCopy = greetUser
//greetCopy()

/***
 Important: When you’re copying a function, you don’t write the parentheses after it – it’s var greetCopy = greetUser and not var greetCopy = greetUser(). If you put the parentheses there you are calling the function and assigning its return value back to something else.
*/

//let sayHello = {
//    print("Hi there!")
//}

//sayHello()

let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

var greetCopy: () -> Void = greetUser

/****
 1. The empty parentheses marks a function that takes no parameters.
 2. The arrow means just what it means when creating a function: we’re about to declare the return type for the function.
 3. Void means “nothing” – this function returns nothing. Sometimes you might see this written as (), but we usually avoid that because it can be confused with the empty parameter list.
 */


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}


//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

/**
 One of the most common reasons for closures in Swift is to store functionality – to be able to say “here’s some work I want you to do at some point, but not necessarily now.” Some examples:

 Running some code after a delay.
 Running some code after an animation has finished.
 Running some code when a download has finished.
 Running some code when a user has selected an option from your menu.
 Closures let us wrap up some functionality in a single variable, then store that somewhere. We can also return it from a function, and store the closure somewhere else.
 
 */

//normal function
func pay(user: String, amount: Int) {
    // code
}

//closure
let payment = { (user: String, amount: Int) in
    // code
}

//First, here’s a closure that accepts one parameter and returns nothing:
let payments = { (user: String) in
    print("Paying \(user)…")
}

//Now here’s a closure that accepts one parameter and returns a Boolean:
let paymento = { (user: String) -> Bool in
    print("Paying \(user)…")
    return true
}

/***
 If you want to return a value without accepting any parameters, you can’t just write -> Bool in – Swift won’t understand what you mean. Instead, you should use empty parentheses for your parameter list, like this:
 */

let paymentm = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

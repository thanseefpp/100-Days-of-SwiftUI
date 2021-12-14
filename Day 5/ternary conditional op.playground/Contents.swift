import Cocoa

let score = 100

var scoreChecker = score >= 50 ? "Yes": "NO" // ternary operator


let age = 18
let canVote = age >= 18 ? "Yes" : "No"
//               what?     True : False   this is what happend when you want to use a ternary operation

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon") // you can use it in print also it will check the condition is true or false.


let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)


enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

let isAuthenticated = true
print(isAuthenticated ? "Welcome!" : "Who are you?")


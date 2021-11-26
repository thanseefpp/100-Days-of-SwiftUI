import Cocoa

// store boolean and handle boolean

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let goodDogs = true
print(goodDogs)


// join string together

 
let people = "Haters"
let action = "hate"

let doit = people + "gonna" + action // concatination
print(doit)

let numbers = "1" + "2" + "3" + "4"
print(numbers)

let name = "Thanseef"
let age = 22
let message = "Hello, My name is \(name) and i'm \(age) years old." //know as string interpolation // integer number can store with string by using String(age)
print(message)

let missionMessage = "Apollo " + String(numbers) + " landed on the moon."

print("5 x 5 is \(5 * 5)")

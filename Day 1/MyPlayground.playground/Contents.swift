import Cocoa

var name = "Thanseef" // var datatype variable can change values (mutable)
name = "thameem"
print(name.capitalized)

let age = 22 // constant datatype variable can't changes values (
//age = 16 // it will make error
print(age)

let quote = "There is only one chance to become a good mac in this world \"check it\" and test it" // single line srtings
print(quote)

let multiLine = """
this is multi
line string
"""

print(multiLine)
print(multiLine.count)

let win = "⭐️ you win ⭐️"
print(win.uppercased())


print(multiLine.hasPrefix("multi"))
print(quote.hasSuffix("mac"))

var data = """

this is
testing
"""
print(data)


let score = 10
let reallyBig = 100_000_00000 // or 100000000
print(reallyBig)


let lowerscore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squredScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)

counter -= 2
counter *= 5
counter /= 2

let number = 120
print(number.isMultiple(of: 3))

print(120.isMultiple(of: 3))



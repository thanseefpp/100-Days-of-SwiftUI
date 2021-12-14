import Cocoa


var count = 10


while count > 0 {
    print("\(count)")
    count -= 1
}

print("outside while loop")

let id = Int.random(in: 1...10) // here we have created a variable that can hold random numbers between 1 to 10.

print(id)

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

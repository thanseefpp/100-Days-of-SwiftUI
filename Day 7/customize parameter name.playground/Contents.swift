import Cocoa


func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)


func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string: string) // here using the argument name and parameter name as the same


func isUppercases(_ string: String) -> Bool { // here using _ under score which means not required to argument name with the value
    string == string.uppercased()
}

let strings = "HELLO, WORLD"
let results = isUppercases(strings) // here only passing the value.



func printTimesTables(for number: Int) {// here for is an external parameter name and number is an internal parameter name so inside the function we can use number
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5) // here i'm using for as the argument name so i can call the external name as argument and handle function datas inside use internal params.

/*
 There are three things in there you need to look at closely:

 We write for number: Int: the external name is for, the internal name is number, and it’s of type Int.
 When we call the function we use the external name for the parameter: printTimesTables(for: 5).
 Inside the function we use the internal name for the parameter: print("\(i) x \(number) is \(i * number)").
 
 */

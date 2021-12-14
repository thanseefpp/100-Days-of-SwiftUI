import Cocoa


func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy: () -> Void = greetUser
greetCopy()


func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

/*
 The function is called makeArray(). It takes two parameters, one of which is the number of integers we want, and also returns an array of integers.
 The second parameter is a function. This accepts no parameters itself, but will return one integer every time it’s called.
 Inside makeArray() we create a new empty array of integers, then loop as many times as requested.
 Each time the loop goes around we call the generator function that was passed in as a parameter. This will return one new integer, so we put that into the numbers array.
 Finally the finished array is returned.
*/



let rolls = makeArray(size: 10) {
    Int.random(in: 1...20)
}

print(rolls)


//this same functionality works with dedicated functions too, so we could write something like this:

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 10, using: generateNumber) // passing values to another function by using another function integer return
print(newRolls)

/*
 There’s one last thing before we move on: you can make your function accept multiple function parameters if you want, in which case you can specify multiple trailing closures. The syntax here is very common in SwiftUI, so it’s important to at least show you a taste of it here.

 To demonstrate this here’s a function that accepts three function parameters, each of which accept no parameters and return nothing
 */

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

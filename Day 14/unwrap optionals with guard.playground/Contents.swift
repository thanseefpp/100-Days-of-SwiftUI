import Cocoa

func printSquare(of number: Int?) { // passwing optional values to it
    guard let number = number else { // guard used to check the optional value contain data or not if it contain data it will skip to the next line of code.
        print("Missing input")
        // 1: We *must* exit the function here
        return // you must use a return keyword inside the guard if i don't do that it will show some error like scope must include a return etc....
    }
    // 2: `number` is still available outside of `guard`
    print("\(number) x \(number) is \(number * number)")
}


var myVar: Int? = 3

//if let unwrapped = myVar {
//    print("Run if myVar has a value inside")
//}

//guard let unwrapped = myVar else { // we have to use else with guard.
//    print("Run if myVar doesn't have a value inside")
//}


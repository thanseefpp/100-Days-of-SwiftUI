import Cocoa

var number = 10

if number.isMultiple(of: 2){
    print("Even")
}else{
    print("Odd")
}


func printTableoftheNumber (number:Int,number2:Int){ // here i have created two parameter to hold the values as integer. (parameter is a place holder)
    for i in 1...number2{
        print("\(i) * \(number) = \(i*number)")
    }
}

printTableoftheNumber(number: 5, number2: 10) // here i'm passing values to the func which is called as arguments (argumets is actual value)

func open(gifts: [String]) { // function the accept only array with string arguments
    for gift in gifts {
        print("It's a \(gift) - thank you!")
    }
}
open(gifts: ["guitar", "pair of socks"])

func open(number: [Int]) { // only accept array of integer values.
    for i in number {
        print("count \(i)")
    }
}
open(number: [1,2,3])

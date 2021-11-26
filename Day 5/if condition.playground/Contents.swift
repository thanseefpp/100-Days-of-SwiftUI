import Cocoa

//var greeting = "Hello, playground"

let score = 50

if score >= 50 {
    print(score)
}else{
    print("score is less than 50 \(score)")
}

var array: [Int] = [2,3,4]
array.append(5)

if array.count > 3 {
    array.remove(at: 0)
}

print(array)


var username = "thanseef"

if username.isEmpty {
    username = "Anonymous"
}else{
    print("Name :\(username)")
}

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)


var mark = 60

if mark >= 30 && mark <= 50{
    print("You are passed with score \(mark)")
}else if mark >= 50 || mark == 100 || mark >= 80{
    print("High score earned \(mark)")
}else{
    print("You are failed \(mark)")
}


enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane // once the type is assigned to a variable swift will automatically pick the other cases

if transport == .airplane || transport == .helicopter { //here we are calling the .aiplane directly which means transport variable type already declared with case.
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

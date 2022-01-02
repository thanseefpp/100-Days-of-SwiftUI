import Cocoa

extension Array {// extension is used to munipulate the collection of default packages or methods
    var isNotEmpty:Bool{
        isEmpty == false
    }
}

let guests = ["marcos","maria","john"]

if guests.isNotEmpty{
    print("Guest count :\(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()



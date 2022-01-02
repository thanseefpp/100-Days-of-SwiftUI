import Cocoa

class Employee { // main class / parent class / base class
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}


class Developer: Employee { // subclasses / child class here inheriting base class to the childclass manager
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() { // here override will change the existing functionalies of old printsummary and work as new func. this is called method overriding.
        print("I'm a developer who will sometimes work \(hours) a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee { // subclasses / child class here inheriting base class to the childclass manager
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary() // calling base class function once inherit any base class to child class you can access all the properties and methods.


/*

Things get a little more complicated when you want to change a method you inherited. For example, we just put printSummary() into Employee, but maybe one of those child classes wants slightly different behavior.

This is where Swift enforces a simple rule: if a child class wants to change a method from a parent class, you must use override in the child class’s version. This does two things:

If you attempt to change a method without using override, Swift will refuse to build your code. This stops you accidentally overriding a method.
If you use override but your method doesn’t actually override something from the parent class, Swift will refuse to build your code because you probably made a mistake.
So, if we wanted developers to have a unique printSummary() method, we’d add this to the

*/


let testing = Developer(hours: 5)
testing.printSummary()

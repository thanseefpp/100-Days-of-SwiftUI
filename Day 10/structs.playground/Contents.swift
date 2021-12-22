import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()


struct Employee {
    let name : String
    var vacationRemaining :Int
    
    mutating func takeVacation (days:Int){ /* if one stuct variable use constant variable then the entire employee datas will become constant. to avoid this below error use mutating keyword. */
        if vacationRemaining > days {
            vacationRemaining -= days  // Left side of mutating operator isn't mutable: 'vacationRemaining' is a 'let' constan
            print("I'm going on a vacation")
            print("Days remaining :\(vacationRemaining)")
        }else{
            print("Sorry, There is no enough space remaining.")
        }
    }
}


// Cannot use mutating member on immutable value: 'newVar' is a 'let' constant. we can't create a variable with let here.
var newVar = Employee(name: "Jestin", vacationRemaining: 10)
/**
 That last one might seem a bit odd at first, because we’re treating our struct like a function and passing in parameters. This is a little bit of what’s called syntactic sugar – Swift silently creates a special function inside the struct called init(), using all the properties of the struct as its parameters. It then automatically treats these two pieces of code as being the same:
 */
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)

newVar.takeVacation(days: 5)
print(newVar.vacationRemaining)

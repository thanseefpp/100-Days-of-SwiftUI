import Cocoa

protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}


/*
 
 - To create a new protocol we write protocol followed by the protocol name. This is a new type, so we need to use camel case starting with an uppercase letter.
 - Inside the protocol we list all the methods we require in order for this protocol to work the way we expect.
 - These methods do not contain any code inside – there are no function bodies provided here. Instead, we’re specifying the method names, parameters, and return types. You can also mark methods as being throwing or mutating if needed.
*/



struct Car: Vehicle { // All the methods we listed in Vehicle must exist exactly in Car
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

/***
 We tell Swift that Car conforms to Vehicle by using a colon after the name Car, just like how we mark subclasses.
 All the methods we listed in Vehicle must exist exactly in Car. If they have slightly different names, accept different parameters, have different return types, etc, then Swift will say we haven’t conformed to the protocol.
 The methods in Car provide actual implementations of the methods we defined in the protocol. In this case, that means our struct provides a rough estimate for how many minutes it takes to drive a certain distance, and prints a message when travel() is called.
 The openSunroof() method doesn’t come from the Vehicle protocol, and doesn’t really make sense there because many vehicle types don’t have a sunroof. But that’s okay, because the protocol describes only the minimum functionality conforming types must have, and they can add their own as needed.
 */

func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)


struct Bicycle: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
//commute(distance: 50, using: bike)


protocol Vehicles {
    var name: String { get } // readonly
    var currentPassengers: Int { get set } // read and write possible
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

/***
 A string called name, which must be readable. That might mean it’s a constant, but it might also be a computed property with a getter.
 An integer called currentPassengers, which must be read-write. That might mean it’s a variable, but it might also be a computed property with a getter and setter.
 */

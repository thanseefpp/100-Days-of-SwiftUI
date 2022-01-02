import Cocoa


class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric:Bool,isConvertible: Bool) { // here we can see an error if we don't call or pass some values to the parent initializers.
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)// calling parent class initialzers.
    }
}


let teslaX = Car(isElectric: true, isConvertible: false)


// copying classes

class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor" // here user2 changes will affect to user1 values.
print(user1.username)
print(user2.username)


class Users {
    var username = "Anonymous"

    func copy() -> Users {
        let user = Users()
        user.username = username
        return user
    }
}

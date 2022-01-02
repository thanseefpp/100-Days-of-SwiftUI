import Cocoa

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit { // deinitializer will execute once this call.
        print("User \(id): I'm dead!")
    }
}

//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// important feature of classes is that they can have a deinitializer function



//Why can variable properties in constant classes be changed?

/*
 One of the small but important differences between structs and classes is the way they handle mutability of properties:
 
 Variable classes can have variable properties changed
 Constant classes can have variable properties changed
 Variable structs can have variable properties changed
 Constant structs cannot have variable properties changed
*/


// The mutating keyword is not allowed with classes.

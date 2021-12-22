import Cocoa


struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) { // here init is like __init__ in python (constructor) used to create custom initializers
        self.name = name // I’ve used self to assign parameters to properties to clarify we mean “assign the name parameter to my name property”.
        self.number = number
    } // initializers never explicitly have a return type – they always return the type of data they belong to.
}



struct Players {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let players = Players(name: "Megan R")
print(players.number)


//var arr : [String] = []
//
//arr.append("testing")
//print(arr)

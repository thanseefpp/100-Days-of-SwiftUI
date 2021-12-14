import Cocoa

func printTimeTable(for number:Int,numb :Int = 12){ // here i have assigned 12 as a params default value
    for i in 1...numb{
        print("\(i) * \(number) = \(i*number)")
    }
}

printTimeTable(for: 5, numb: 10)
printTimeTable(for: 6)// here passing the 6 to the internal parameter number variable.


var characters = ["Jerry","Sherin","Shafna","Muhaim"]
print(characters.count)
characters.removeAll(keepingCapacity: true) // this will remove all the items inside the array but hold the capacity
print(characters.count)

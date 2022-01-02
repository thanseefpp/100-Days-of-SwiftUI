import Cocoa

// method 1

func collectionOfInteger(arrayOfInt:[Int]?) -> Int{
    print("testing")
    if arrayOfInt != nil{
        return (arrayOfInt?.randomElement())!
    }
    else{
        return 0
    }
}

// method 1
let array: [Int]? = nil

let dataGetter = array?.randomElement() ?? Int.random(in: 1...100)

print(dataGetter)


// method 2
func arrayHandler(_ used:[Int]?) -> Int { return used?.randomElement() ?? Int.random(in:1...100)}

print(arrayHandler(nil))
print(arrayHandler([1,2,3]))

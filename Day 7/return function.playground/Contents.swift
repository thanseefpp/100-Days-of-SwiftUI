import Cocoa

func rollDice() -> Int{
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


func handleString (val:String,val2:String) -> Bool {
    let value1 = val.sorted()
    let value2 = val2.sorted()
    return value1==value2
}

var datas = handleString(val: "abc", val2: "cba")

print(datas)

func handleString2 (val:String,val2:String) -> Bool {
    return val.sorted() == val2.sorted()
}

var data = handleString2(val: "abc", val2: "cba")
print(data)


func pythagoras(a:Double,b:Double) -> Double {
    let stored = a * a + b * b
    let result = sqrt(stored)
    return result
}

let pytho = pythagoras(a: 4, b: 3)

print(pytho)


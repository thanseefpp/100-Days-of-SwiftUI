import Cocoa

let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]

//let result = luckyNumbers.filter()

let count = luckyNumbers.count

for i in 0...count-1 {
    if luckyNumbers[i] % 2 == 0{
        print("Even number is \(luckyNumbers[i])")
        
    }else{
        print("Odd number is \(luckyNumbers[i])")
    }
}

let sort = luckyNumbers.sorted()
print("Ascending order :\(sort)")



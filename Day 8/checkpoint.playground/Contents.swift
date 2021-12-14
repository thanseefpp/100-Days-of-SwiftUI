import Cocoa

enum ErrorHandler :Error{
    case outofbound,nonroot
}


func findSqureRoot(external num:Int) throws -> Int {
    if num > 10000 || num < 1 {
        throw ErrorHandler.outofbound
    }else if num > 1 || num < 10000{
        var val = 1
        var res = 1
        while (res <= num){
            val+=1
//            print("val:\(val)")
            res = val * val
//            print("res : \(res)")
        }
        let finalValue = val - 1
        if finalValue * finalValue == num{
            return finalValue
        }else{
            throw ErrorHandler.nonroot
        }
    }
    return 0
}

let number = 25

do{
    let result = try findSqureRoot(external: number)
    print("Square root of \(number) is \(result)")
}catch ErrorHandler.nonroot{
    print("Non root value returned")
}catch ErrorHandler.outofbound{
    print("Out of bounds")
}catch{
    print("Your functions is getting an Error")
}


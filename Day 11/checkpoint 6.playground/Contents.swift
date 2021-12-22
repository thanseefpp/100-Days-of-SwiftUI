import Cocoa

struct Car{
    let model = "BWM"
    let numberOfSeats = 4
    private var gear : Int {
        didSet{
            print("Gear has been changed from \(oldValue) to \(gear)")
        }
    }
    
    init(){
        self.gear = 0
    }
    
    mutating func ChangeGear(swiftGear:Bool){
        if swiftGear == true{
            while gear < 10{
                gear += 1
            }
        }else{
            gear -= 1
        }
    }
}


var brand = Car()
print("model :\(brand.model) number of seats : \(brand.numberOfSeats)")
brand.ChangeGear(swiftGear: true) // gearup you can remove the while loop if it's not requried and replace with gear += 1
brand.ChangeGear(swiftGear: false) // geardown


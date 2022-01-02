import Cocoa


protocol building { // blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
    var rooms : Int {get}
    var cost : Int {get}
    var estateAgent : String {get}
    func saleSummary()
}


extension building {
    func saleSummary(){
        print("Name of estate agent :\(estateAgent), cost of the buildg :\(cost), number of rooms available :\(rooms)")
    }
}

struct House: building {
    var rooms: Int
    
    var cost: Int
    
    var estateAgent: String
}

struct Office:building {
    let estateAgent: String
    let cost: Int
    let rooms: Int
}

let datas = House(rooms: 6,cost:100000,estateAgent:"Naheem")
datas.saleSummary()


let bookingToOffice = Office(estateAgent: "Jestin", cost: 500000, rooms: 5)
bookingToOffice.saleSummary()

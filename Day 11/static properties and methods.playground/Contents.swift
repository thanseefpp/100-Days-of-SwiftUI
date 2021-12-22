import Cocoa

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}


//Notice the keyword static in there, which is what means both the studentCount and add() methods belong to the School struct itself rather than to individual instances of the struct.


School.add(student: "Taylor Swift")
print(School.studentCount)


// you can't call a method from static to non static. but you can call from non static to static.


struct AppData {
    static let version = "1.3 beta 2"   // static only belogs to the struct so i don't need to declare any variable to call this property.
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)


struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone") // example datas creating and assainging to this struct.
}

print(Employee.init(username: "testing", password: "String"))


//static var entropy = Int.random(in: 1...1000)
//
//static func getEntropy() -> Int {
//    entropy += 1
//    return entropy
//}

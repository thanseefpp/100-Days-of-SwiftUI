import Cocoa


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)

let captainFirstTeams = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

var names = ["jestin","thomas","anil","kasim"]
let reverseTeam = names.sorted{ $0 > $1} //trailing shorter syntax reversing
print(reverseTeam)

let tOnly = names.filter{$0.hasPrefix("e")}
print(tOnly)

let uppercase = names.map{$0.uppercased()}
print(uppercase)


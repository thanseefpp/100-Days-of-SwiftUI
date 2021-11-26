import Cocoa

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun



switch forecast {
    case .sun:
        print("It should be a nice day.")
    case .rain:
        print("Pack an umbrella.")
    case .wind:
        print("Wear something warm")
    case .snow:
        print("School is cancelled.")
    case .unknown:
        print("Our forecast generator is broken!")
}

var score = 5

switch score {
    case 5:
        print("You got the highest score \(score)")
    case 4:
        print("you got the second largest score \(score)")
    case 3:
        print("you just won!")
    default:
        print("You can try next time good luck")
}

let place = "Metropolis"

switch place {
    case "Gotham":
        print("You're Batman!")
    case "Mega-City One":
        print("You're Judge Dredd!")
    case "Wakanda":
        print("You're Black Panther!")
    default:
        print("Who are you?")
}



let day = 5
print("My true love gave to me…")

// this switch case will check every case until it get the right one once it got the right one it won't check the next items (cases)
switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

let days = 5
print("My true love gave to me…")

// in this case here we are using fallthrough keyword which will used to check through the next case even if you got the right case.
switch days {
case 5:
    print("5 golden rings")
    fallthrough // used to check next case even if got the right one.
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}



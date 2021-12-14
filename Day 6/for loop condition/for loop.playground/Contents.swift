import Cocoa


var Names = ["thanseef","thameem","sabira","thanjudheen"]

for i in Names{
    print("Name :\(i.capitalized)")
}

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 { // here 1 to 12 range this loop work ... means the range
    print("5 x \(i) is \(5 * i)")
}


for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print() // to print empty new line
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1...5 { // here only used .. 2 dots but used < than symbol which means it only works up to 4. 1 to 4
    print("Counting 1 up to 5: \(i)")
}


var lyric = "Haters gonna"

for _ in 1...5 { // here the _ symbol does not create a variable so you can itrate through a loop without create a variable.
    lyric += " hate"
}

print(lyric)

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]
print(names[0])
print(names[0...3]) // range by using dots
print(names[0...]) // here print all the elements from 0th position
for _ in names {
    print("[CENSORED] is a secret agent!")
}

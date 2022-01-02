import Cocoa


let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

//With the nil coalescing operator, written ??, we can provide a default value for any optional, like this:
let new = captains["Serenity"] ?? "N/A"


//let new = captains["Serenity", default: "N/A"] // we can also provide a default value to it.


let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"


struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)


let input = ""
let number = Int(input) ?? 0
print(number)



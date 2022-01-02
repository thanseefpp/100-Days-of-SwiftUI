import Cocoa

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")


struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil // handling optional
let author = book?.author?.first?.uppercased() ?? "Nothing found" // multiple optional chanining.
print(author)//


let names2 = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]

//let surnameLetter = names2["Vincent"]?.first?.uppercased()

let surnameLetter = names2["Vincent"]?.first?.uppercased() ?? "?"


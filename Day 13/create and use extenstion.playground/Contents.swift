import Cocoa

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

//The .whitespacesAndNewlines value comes from Apple’s Foundation API, and actually so does trimmingCharacters(in:) – like I said way back at the beginning of this course, Foundation is really packed with useful code



extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim() {
        self = self.trimmed()
    }
    
}

/*
 We start with the extension keyword, which tells Swift we want to add functionality to an existing type.
 Which type? Well, that comes next: we want to add functionality String.
 Now we open a brace, and all the code until the final closing brace is there to be added to strings.
 We’re adding a new method called trimmed(), which returns a new string.
 Inside there we call the same method as before: trimmingCharacters(in:), sending back its result.
 Notice how we can use self here – that automatically refers to the current string. This is possible because we’re currently in a string extension.
 */
 
 let trimmedm = quote.trimmed()


quote.trim()

//var lines: [String] {
//    self.components(separatedBy: .newlines)
//}

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

//print(lyrics.lines.count)


//struct Book {
//    let title: String
//    let pageCount: Int
//    let readingHours: Int
//}

//let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)


struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int

    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

//extension Book {
//    init(title: String, pageCount: Int) {
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50
//    }
//}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178)

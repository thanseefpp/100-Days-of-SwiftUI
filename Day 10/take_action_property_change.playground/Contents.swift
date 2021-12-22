import Cocoa


struct Game {
    var score = 0 {
        didSet{
            print("Score is now \(score)")
        }
    }
}


var check = Game()

check.score += 5
check.score -= 2
check.score = 10


/**
 If you want it, Swift automatically provides the constant oldValue inside didSet, in case you need to have custom functionality based on what you were changing from. There’s also a willSet variant that runs some code before the property changes, which in turn provides the new value that will be assigned in case you want to take different action based on that.
 */


struct App {
    var contacts = [String]() {
        willSet { // willset is used to check before happaning changes
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet { // didset will run once the property got any changes.
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")


/***
 Yes, appending to an array will trigger both willSet and didSet, so that code will print lots of text when run.

 In practice, willSet is used much less than didSet, but you might still see it from time to time so it’s important you know it exists. Regardless of which you choose, please try to avoid putting too much work into property observers – if something that looks trivial such as game.score += 1 triggers intensive work, it will catch you out on a regular basis and cause all sorts of performance problems.
 
*/

import Cocoa

// how to use type annotations

var name = "thanseef" // this variable can hold only string values once you assign to it

var names:String = "thameem" // or you can use this way like this variable can also manage only string once you declare the type.

var score = 0 // normal
var mark:Double = 0 // can handle decimal numbers
var scores:Int = 0 // can handle interger values only

let isAuthenticated:Bool = true

var albums : [String] = ["justin songs","darak songs"] // created an array
var songs : [String:String] = ["key1":"Alone song"] // dict with string values.

enum UIstyle {
    case light,dark,system
}

var style = UIstyle.dark

var styles : UIstyle = UIstyle.light // you can create a datatype assigned value like this

let score : Int // you can initialize a variable like this without assigning a value to it

score = 20 // you can

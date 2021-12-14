import Cocoa
// array using
func getUser() -> [String]{
    ["developer","swift"]
}

let user = getUser()

print("items : \(user[0]) \(user[1])") // here we are using array to return from a function

/*
 That’s problematic, because it’s hard to remember what user[0] and user[1] are, and if we ever adjust the data in that array then user[0] and user[1] could end up being something else or perhaps not existing at all.
 */

//dictionary using
func getUsersDict() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let users = getUsersDict()
print("Name: \(users["firstName", default: "Anonymous"]) \(users["lastName", default: "Anonymous"])")  // here using dictionary key words to return values


/*
 Yes, we’ve now given meaningful names to the various parts of our user data, but look at that call to print() – even though we know both firstName and lastName will exist, we still need to provide default values just in case things aren’t what we expect.

 Both of these solutions are pretty bad, but Swift has a solution in the form of tuples. Like arrays, dictionaries, and sets, tuples let us put multiple pieces of data into a single variable, but unlike those other options tuples have a fixed size and can have a variety of data types.
 */


// using tuples
func getUserTuple() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let usert = getUserTuple()
print("Name: \(usert.firstName) \(usert.lastName)")

// we could also use tuples like this

func getUserpa() -> (firstName: String, lastName: String) {
    ("param", "names")
}

let usr = getUserpa()
print("Name: \(usr.firstName) \(usr.lastName)")


func getUserDatas() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let userdata = getUserDatas()
let firstName = userdata.firstName
let lastName = userdata.lastName

print("Name: \(firstName) \(lastName)")

// or you also use this below method.

/*
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")
*/

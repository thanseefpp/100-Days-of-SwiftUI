import Cocoa

// array
var array = ["apple","mango","pinapple"] // array of strings
print(array)
let num = 10

print("values from the array :\(array[2])")

var temperatures = [20.03,24.45,34.02] // decimal or double array

// can't add integer array and string array

var score = Array<Int>() // declaring new array as integer type
score.append(10) // you can't append a string into the integer array
print(score)

// dictionary

let dictData = [
    "name":"Thanseef",
    "age":String(20),
    "location":"malappuram"
] // created a dictionary which can hold datas with keyword
print(dictData["name",default: "Unknown"],dictData["age",default: "Unknown"]) // access dict data use keyword and assign an empty default value.

let boolDict = [
    2019:true,
    2020:false,
    2021:false
]
print(boolDict[2020,default: false])

var updatableintDict = [String:Int]() // created a string keyword holding integer value taking dict. note use var if you want to keep updating in any values inside a dict

updatableintDict["key1"] = 2021

var updatablestringDict = [String:String]()
updatablestringDict["key1"] = "thameem"


// set

let brand = Set(["Benz","BWM","Nike","Apple"]) // created and assigned values to a set
print(brand)

var Brands = Set<String>() // created a variable that can handle set with string values only

Brands.insert("BMW")
Brands.insert("Benz") // to insert values to set use insert insead of append
Brands.insert("BMW")
Brands.insert("Benz") // these two last inserted values can't insert into the list bcz it's already in the set that's why we use set it won't duplicate.
print(Brands)

// how to create and use enums

var selected = "Monday"

enum weekDays {
    case Monday,Tuesday,Wednesday,Thursday,Friday,Sturday,Sunday // simple method
//    case Monday
//    case Tuesday
}

var days = weekDays.Friday
days = weekDays.Monday // you can call the values from the enum like this can't call other datas which is not in the enums
print(days)



import Cocoa

var dataCollections : [String] = ["thanseef","thameem","thaju","sabi","thanseef"]

print(dataCollections)

print(dataCollections.count)

for i in dataCollections{
    print(i)
}

let uniqueDatas = Set(dataCollections)
print(uniqueDatas)

for i in uniqueDatas{
print(i)
}

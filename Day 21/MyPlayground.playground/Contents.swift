var a:[String:String] = [String:String]()

//Adding a kay value pair
a["A123"] = "Dorian ID"


//Retrieving the value for a given key
print(a["A123"]!)

//Update
a["A123"] = "Gena ID"
print(a)
print(a["A123"]!)

//Remove a key value pair
a["A123"] = nil
print(a["A123"])
print(a)


//Declaring a dictionnat initialized to key value pairs
var b = ["A781" : "Dorian", "B123" : "Gena", "C111" : "TigR"]
print(b)


//key == "A781" "B123" "C11"
//value == "Dorian" "Gena" "TigR"
//Iterating through a dictionnary
//kvp == key-value-pair
for kvp in b {
	print("key is : " + kvp.key)
	print("value is: " + kvp.value)
}

// or
for (key, value) in b {
	print("key is : " + key)
	print("value is: " + value)
}

//==================TUPLES===================
//Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")


var c:(String, String) = ("Hey", "There")
c.0 // -> Hey
c.1 // -> There


let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)") // Prints "The status code is 404"
print("The status message is \(statusMessage)") // Prints "The status message is Not Found"


//If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_) when you decompose the tuple:
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)") // Prints "The status code is 404"


//Alternatively, access the individual element values in a tuple using index numbers starting at zero:
print("The status code is \(http404Error.0)") // Prints "The status code is 404"
print("The status message is \(http404Error.1)") // Prints "The status message is Not Found"


//You can name the individual elements in a tuple when the tuple is defined:
let http200Status = (statusCode: 200, description: "OK")


//If you name the elements in a tuple, you can use the element names to access the values of those elements:
print("The status code is \(http200Status.statusCode)") // Prints "The status code is 200"
print("The status message is \(http200Status.description)") // Prints "The status message is OK"

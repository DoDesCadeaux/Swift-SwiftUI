//NIL MEANS EMPTY

var a = 1

//Implicitly Unwrapped Optionnal : !
//Can contain nil
//XCode doesn't warn us
//No need to unwrap
//Less safer
var b: Int! = 10

//Optionnal : ?
//Can contain nil
//Xcode warns us
//Need to unwrap to get value
//Safer than : !
var c: Int? = nil

//Using if statement to check nil
if c != nil {
	var x = 1 + c!
}

//Optionnal Binding
//If 'c' contains a value, it assigns it to 'y'
//If not, it will just skip the statement
if let y = c {
	var x = 1 + y
}

//Optionnal chaining

struct Person {
	var name = "Rory"
	
	func talk() {
		print("hello")
	}
}

var d: Person? = nil
//Doesnt run talk because it's a optionnal chaining
//Because the '?' recognize d = nil so it doesnt run the talk method and the name
d?.talk()
d?.name


//When to use Optionnals :
/*
 - When you declare variable but you don't want to set a default value
 - When you want to use nil to represent an unset state
 - When you're using a variable to reference data that can actually be nil. For example like API's, some pieces of data can be nil because they contains nothing.
 */

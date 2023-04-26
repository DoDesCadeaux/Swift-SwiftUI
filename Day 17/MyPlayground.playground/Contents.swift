//Class
class Person {
	var name = ""
	
	func talk() {
		print("Make conversation")
	}
}

//Subclass
class Engineer: Person {
	override func talk() {
		print("Flies Astral to the stars")
		super.talk()
	}
}


//Struct
struct TalkShowHost {
	var name = ""
}

//Test function
func changeName(p: Engineer) {
	p.name = "Jackson"
}

//Structures are value types
//var a = TalkShowHost()
//a.name = "Cloch"
//
//var b = a
//b.name = "Jack"
//
//print(a.name)
//print(b.name)
//
//changeName(p: a)

//Classes are reference types
var a = Engineer()
a.name = "Dorian"

var b = a
b.name = "Another Engineer"

changeName(p: b)
print(a.name)
print(b.name)

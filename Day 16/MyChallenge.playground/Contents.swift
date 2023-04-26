import UIKit

/*
 Challenge

 Declare a string array in your Playground containing at least 4 string names (e.g. Sally, Sheldon)

 Declare a Person class with a string property, name.

 In the Person class, declare a method called introduceMyself().

 In this method, write the code to print out a string like: "Hi, my name is ____". Substitute the name property for the blank.

 Now declare three different subclasses of Person. Each subclass should be named an occupation such as "Physicist", "Engineer" or "Astronaut".

 In each subclass, override the introduceMyself method.

 In the overridden method, add the code inside so that when its called, it will print out a string like:

 "Hi, my name is ___."

 "I'm a(n) ____".

 Substitute the first blank with the name property, the second blank should contain a hardcoded string that is relevant to the name of the subclass.

 Lastly declare a loop that

 Loops 10 times
 Each iteration of the loop creates a new instance of one of your three subclasses
 Randomly assigns that object a name
 Calls the introduceMyself method of the object
 */

var names: [String] = ["Dorian", "Tigrou", "Gena", "Rory"]

class Person {
	var name = ""
	
	func introduceMyself() {
		print("Hi, my name is \(name).")
	}
}

class Physicist: Person {
	override func introduceMyself() {
		super.introduceMyself()
		print("I'm a Physicist")
	}
}

class Engineer: Person {
	override func introduceMyself() {
		super.introduceMyself()
		print("I'm an Engineer")
	}
}

class Astronaut: Person {
	override func introduceMyself() {
		super.introduceMyself()
		print("I'm an Astronaut")
	}
}

for _ in 0...9 {
	var randomNumber = Int.random(in: 1...3)
	let randomName = names.randomElement()!
	var guy = Person()
	
	if (randomNumber == 1)
	{
		guy = Physicist()
	}
	else if (randomNumber == 2)
	{
		guy = Engineer()
	}
	else
	{
		guy = Astronaut()
	}
	
	guy.name = randomName
	guy.introduceMyself()
	
}

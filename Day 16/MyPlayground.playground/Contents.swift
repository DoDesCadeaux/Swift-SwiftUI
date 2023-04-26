class Person {
	var name = "Person"
	func talk() {
		print("Hi! \(name)")
	}
}

class Engineer: Person {
	override func talk() {
		print("Hahahah !")
		super.talk()
	}
}


var c = Engineer()
var a = Person()

a.name = "Le Pilote de l'iceberg"
c.name = "Le copilote de l'iceberg"
c.talk()
a.talk()

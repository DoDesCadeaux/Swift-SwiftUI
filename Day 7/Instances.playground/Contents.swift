import Foundation

struct MyStructure {
	var message:String = "Hello"
	
	func myFunction() {
		print(message)
	}
}

var a:MyStructure = MyStructure()
a.message = "Yo"
a.myFunction()

var b:MyStructure = MyStructure()

b.message = "les gens"
b.myFunction()




struct DatabaseManager {
	
	private var serverName = "Server 1"
	
	func saveData(data:String) -> Bool {
		print(serverName)
		//Code saves data and return bool
		return true
	}
}


struct chatView {
	var message = "Hello"
	
	func sendChat() {
		var db = DatabaseManager()
		let isSucces = db.saveData(data: message)
	}
}

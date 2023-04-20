import UIKit
import Foundation

//Challenge :
//Declare a struct called Car
//Declare 4 properties called make, model, year and details
//Assign String data to the make, model and year properties (use whatever values you want)
//Make the details property a computed property that returns a String with the year, make and model. (For example, "1999 Toyota Camry")
//(Hint: You can use the + operator to add strings together. This is also known as concatenation)
//Make all 4 properties have the private access level
//Finally, declare a method called getDetails which returns the value of the details property.


struct Car {
	
	private var make:String = "Mercedes-Benz"
	private var model:String = "AMG GT-R BlackSeries"
	private var year:String = "2023"
	private var details: String {
		return year + " " + make + " " + model
	}
	func getDetails() -> String {
		return details
	}
}


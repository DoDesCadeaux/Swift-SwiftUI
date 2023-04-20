import Foundation
//Challenge 1 :
//Write a function called "goodMorning" that:
//Prints out “Good Morning” in the console window (use the print command to do this) when called.

func goodMorning()
{
	print("Good Morning!")
}

goodMorning()



//Challenge 2
//Write a function called “printTotalWithTax” that:
//Accepts a parameter called “subtotal” that is of data type Double.
//When this function is called, it will print out the subtotal multiplied by 1.13 in the console window

func printTotalWithTax(subtotal: Double)
{
	let total = (subtotal * 1.13)
	print(String(format: "%.2f", total))
}

printTotalWithTax(subtotal: 50)


//Challenge 3
//Write a function called “getTotalWithTax” that:
//Accepts a parameter called “subtotal” that is of data type Double.
//Returns a Double value.
//When this function is called, it will return the subtotal multiplied by 1.13 as the return value.
//Take the returned value from calling the function and print it out to the console.

func getTotalWithTax(subtotal: Double) -> Double
{
	let total: Double = (subtotal * 1.13)
	return total
}

let totalWithTax: Double = getTotalWithTax(subtotal: 25)
print(String(format: "%.2f", totalWithTax))


//Challenge 4
//Write a function called “calculateTotalWithTax” that:
//Accepts two parameters called “subtotal” (Double) and “tax” (Double).
//Returns a Double value.
//When called, it will return the subtotal multiplied by the tax as the return value.
//Take the returned value from calling the function and print it out to the console.

func calculateTotalWithTax(subtotal: Double, tax: Double) -> Double
{
	let total: Double = (subtotal * tax)
	
	return total
}

let totalWithTaxes: Double = calculateTotalWithTax(subtotal: 100, tax: 1.15)
print(String(format: "%.2f", totalWithTaxes))

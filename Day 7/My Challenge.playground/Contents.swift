import Foundation

/*
 Challenge 1

 Declare a struct called TaxCalculator

 Declare a property inside called tax and set it to a decimal value representing the amount of sales tax where you live

 Declare a method inside called totalWithTax that accepts a Double as an input parameter and returns a Double value.

 Inside that method, write the code to return a Double value representing the input number with tax included
 */

struct taxCalculator {
	let tax: Double = 1.21
	
	func calculTotalWithTax(amount: Double) -> Double {
		return amount * tax
	}
}

/*
 Challenge 2

 Declare a struct called BillSplitter

 Declare a method inside called splitBy that:

 has an input parameter of type Double representing a subtotal
 has an input parameter of type Int representing the number of people
 returns a Double value
 Inside that method, use an instance of TaxCalculator (from challenge 1 above) to calculate the total with tax and then split the bill by the number of people passed into the method.

 Return the amount that each person has to pay.
 */

struct billSplitter {
	func splitBy(subtotal: Double, numberOfPeople: Int) -> Double {
		var totalWithTax: taxCalculator = taxCalculator()
		var getTotalWithTax = totalWithTax.calculTotalWithTax(amount: subtotal)

		return getTotalWithTax / Double(numberOfPeople)
	}
}

/*
 Challenge 3

 Create an instance of BillSplitter

 Use the instance to print out the amount that each person pays (Assuming 5 people with a bill of $120)
 */

var bill: billSplitter = billSplitter()
let numberPeople: Int = 5
var cost: Double = 120
var billSplitted = bill.splitBy(subtotal: cost, numberOfPeople: numberPeople)
print(billSplitted)

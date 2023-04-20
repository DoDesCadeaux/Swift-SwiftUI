/*
 Challenge:
 4 people have dinner and want to split the bill.
 Calculate the total with tax and then how much each person owes.
 Assign it to the variable, 'split' and then print it out to the console area.
 */

let people:Double = 4
let subtotal:Double = 128
let tax = 0.13
var split:Double = 0

// Solution
split = (subtotal * (1 + tax))/people
print(split)

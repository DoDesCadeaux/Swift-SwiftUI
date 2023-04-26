//
//  PizzasModel.swift
//  My-Challenge
//
//  Created by Dorian Duraku on 25/04/2023.
//

import Foundation

class PizzasViewModel: ObservableObject {
	@Published var pizzas = [Pizza]()
	
	init() {
		self.pizzas = [
			Pizza(name: "Hawaiian", fstTopping: "Ham", sndTopping: "Pineapple", thdTopping: "Cheese"),
			Pizza(name: "Pepperoni", fstTopping: "Pepperoni", sndTopping: "Cheese", thdTopping: "Tomate Sauce"),
			Pizza(name: "Margherita", fstTopping: "Tomate", sndTopping: "Mozarella", thdTopping: "Basil")
		]
	}
	
	func addPineapple() {
		for index in pizzas.indices {
			pizzas[index].fstTopping = "Pineapple"
		}
	}
}

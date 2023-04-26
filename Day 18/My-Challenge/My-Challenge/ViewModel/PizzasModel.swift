//
//  PizzasModel.swift
//  My-Challenge
//
//  Created by Dorian Duraku on 25/04/2023.
//

import Foundation

class PizzasViewModel {
	var pizzas = [Pizza]()
	
	init() {
		self.pizzas = [
			Pizza(name: "Hawaiian", fstTopping: "Ham", sndTopping: "Pineapple", thdTopping: "Cheese"),
			Pizza(name: "Pepperoni", fstTopping: "Pepperoni", sndTopping: "Cheese", thdTopping: "Tomate Sauce"),
			Pizza(name: "Margherita", fstTopping: "Tomate", sndTopping: "Mozarella", thdTopping: "Basil")
		]
	}
}

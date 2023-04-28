//
//  PizzaModel.swift
//  My-Challenge-JSON
//
//  Created by Dorian Duraku on 27/04/2023.
//

import Foundation

class PizzaModel: ObservableObject {
	@Published var pizzas = [Pizza]()
	
	init() {
		self.pizzas = DataService.getLocalData()
	}
}

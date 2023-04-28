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
		let pathString = Bundle.main.path(forResource: "pizza", ofType: "json")
		
		if let path = pathString {
			let url = URL(filePath: path)
			
			do {
				let data = try Data(contentsOf: url)
				
				let decoder = JSONDecoder()
				
				do {
					let pizzaData = try decoder.decode([Pizza].self, from: data)
					
					for p in pizzaData {
						p.id = UUID()
					}
					
					self.pizzas = pizzaData
				}
				catch {
					print(error)
				}
			}
			catch {
				print(error)
			}
		}
	}
}

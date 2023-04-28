//
//  RecipeModel.swift
//  My-MVVM-Demo
//
//  Created by Dorian Duraku on 25/04/2023.
//

import Foundation

class RecipeModel: ObservableObject {
	@Published var recipes = [Recipe]()
	
	init() {
		let recipe = Recipe(name: "Spaghetti", cuisine: "Italian")
		let sushi = Recipe(name: "Sushi", cuisine: "Japanese")
		
		recipes.append(recipe)
		recipes.append(sushi)
	}
	
	func addRecipe() {
		recipes.append(Recipe(name: "Burger", cuisine: "American"))
	}
}

//
//  Recipe.swift
//  Recipe List App
//
//  Created by Dorian Duraku on 27/04/2023.
//

import Foundation

//Identifiable = to be viewed by the View
//Decodable = to use the data from JSON format

class Recipe: Identifiable, Decodable {
	var id: UUID?
	var name: String
	var featured: Bool
	var image: String
	var description: String
	var prepTime: String
	var cookTime: String
	var totalTime: String
	var ingredients: [String]
	var directions: [String]
}

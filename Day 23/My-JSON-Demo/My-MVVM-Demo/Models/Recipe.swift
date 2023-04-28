//
//  Recipe.swift
//  My-MVVM-Demo
//
//  Created by Dorian Duraku on 25/04/2023.
//

import Foundation

class Recipe: Identifiable, Decodable {
	
	var id:UUID? = UUID()
	var name: String
	var cuisine: String
}

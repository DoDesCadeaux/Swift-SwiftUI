//
//  Recipe.swift
//  My-MVVM-Demo
//
//  Created by Dorian Duraku on 25/04/2023.
//

import Foundation

struct Recipe: Identifiable {
	
	var id = UUID()
	var name: String
	var cuisine: String
}

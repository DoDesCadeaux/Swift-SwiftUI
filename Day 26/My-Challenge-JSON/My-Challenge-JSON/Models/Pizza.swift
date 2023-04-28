//
//  Pizza.swift
//  My-Challenge-JSON
//
//  Created by Dorian Duraku on 27/04/2023.
//

import Foundation

class Pizza: Identifiable, Decodable {
	var id: UUID? = UUID()
	var name: String
	var toppings: [String]
	var image: String
}

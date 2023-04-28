//
//  DataService.swift
//  My-Challenge-JSON
//
//  Created by Dorian Duraku on 28/04/2023.
//

import Foundation

//Parse local JSON file
class DataService {
	static func getLocalData() -> [Pizza] {
		let pathString = Bundle.main.path(forResource: "pizza", ofType: "json")
		guard pathString != nil else {
			return [Pizza]()
		}
		
		let url = URL(fileURLWithPath: pathString!)
		guard url != nil else {
			return [Pizza]()
		}
		
		do {
			let data = try Data(contentsOf: url)
			let decoder = JSONDecoder()
			do {
				let pizzaData = try decoder.decode([Pizza].self, from: data)
				
				for p in pizzaData {
					p.id = UUID()
				}
				return pizzaData
			}
			catch {
				print(error)
			}
		}
		catch {
			print(error)
		}
		return [Pizza]()
	}
}

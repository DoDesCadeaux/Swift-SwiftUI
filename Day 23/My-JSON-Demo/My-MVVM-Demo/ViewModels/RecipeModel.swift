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
		//Get the path to the json file within the app bundle
		
		let pathString = Bundle.main.path(forResource: "data", ofType: "json")
		
		if let path = pathString {
			//create a url object
			let url = URL(filePath: path)
			
			//Error handling
			do {
				//Put the code that potentially throws an error
				//create a data object with the data at the url
				let data = try Data(contentsOf: url)
				
				//Parse the data
				let decoder = JSONDecoder()
				
				do {
					let recipeData = try decoder.decode([Recipe].self, from: data)
					
					//Set unique id for each instance
					for r in recipeData {
						
						//set a unique ID for each recipe in the recipeData array
						r.id = UUID()
					}
					
					//Assign the data to the published property
					self.recipes = recipeData
				}
				catch {
					//Log Couldn't decode JSON
					print(error)
				}
			}
			catch {
				//Execution will come here if error is thrown like couldnt find the json file etc...
				//handle the error
				print(error)
			}
		}
	}
}

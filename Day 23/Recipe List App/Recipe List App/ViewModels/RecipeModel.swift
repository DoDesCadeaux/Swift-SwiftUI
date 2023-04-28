//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Dorian Duraku on 27/04/2023.
//

import Foundation

class RecipeModel: ObservableObject {
	@Published var recipes = [Recipe]()
	
	init() {
		//Set the recipes property in DataService getLocalData method
		//Create an instance of data service and get data
		self.recipes = DataService.getLocalData()
		
	}
}

//
//  ContentView.swift
//  Recipe List App
//
//  Created by Dorian Duraku on 27/04/2023.
//

import SwiftUI

struct RecipeListView: View {
	
	//Reference view model
	@ObservedObject var model = RecipeModel()
	
    var body: some View {
		List(model.recipes) { recipe in
			HStack (spacing: 20){
				Image(recipe.image)
					.resizable()
					.scaledToFill()
					.frame(width: 50, height: 50, alignment: .center)
					.clipped()
					.cornerRadius(10)
				Text(recipe.name)
			}
		}
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}

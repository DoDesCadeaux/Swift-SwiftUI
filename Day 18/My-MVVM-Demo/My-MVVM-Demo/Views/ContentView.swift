//
//  ContentView.swift
//  My-MVVM-Demo
//
//  Created by Dorian Duraku on 25/04/2023.
//

import SwiftUI

struct ContentView: View {
	
	var model = RecipeModel()
	
    var body: some View {

		List (model.recipes) { r in
			VStack {
				Text(r.name)
					.font(.title)
				Text(r.cuisine)
			}
		}
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

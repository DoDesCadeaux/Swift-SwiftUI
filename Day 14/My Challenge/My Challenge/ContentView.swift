//
//  ContentView.swift
//  My Challenge
//
//  Created by Dorian Duraku on 20/04/2023.
//


/*
 Challenge

 Build a UI with a List and a Button below it.

 Declare a property that contains an array of 5 strings. These can be any 5 words you want.

 Each time the button is tapped, choose a random word from the array and put it in the list.

 The number of items in the list should grow as you tap the button.
 */

import SwiftUI

struct ContentView: View {
	
	@State private var catNames = ["Tigrou", "Rory", "Baghera", "Cacahuete", "Chat"]
	@State private var fillNames: [String] = []
    var body: some View {
		
		VStack {
			List (fillNames, id: \.self) { fillNamesArray in
				Text(fillNamesArray)
			}
			
			Button("Click") {
				fillNames.append(catNames.randomElement()!)
			}
		}
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

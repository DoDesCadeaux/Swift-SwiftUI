//
//  ContentView.swift
//  My List Demo
//
//  Created by Dorian Duraku on 19/04/2023.
//

import SwiftUI

struct ContentView: View {
	
	var array = ["Element 1 ", "Element 2", "Element 3", "Element 4", "Element 5"]
	
    var body: some View {

		NavigationView {
			
			List(array, id: \.self) { arrayElement in
				
				NavigationLink(destination: Text("Destination")) {
					Text(arrayElement)
				}
				
			}.navigationTitle("My List of elements")
		}
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

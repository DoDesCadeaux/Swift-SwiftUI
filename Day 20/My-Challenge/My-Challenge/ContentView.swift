//
//  ContentView.swift
//  My-Challenge
//
//  Created by Dorian Duraku on 26/04/2023.
//

/*
 Challenge

 Declare an @State property for an array of Strings but make it optional and don't set an initial value.

 For the user interface, add two buttons.

 When the first button is tapped, it sets the array of Strings to nil.

 When the second button is tapped, it adds three strings to the array. (These can be any 3 hardcoded strings of your choice)

 Did you know that you can use If statements in your view code? Let's try it out.

 Underneath the buttons, use an If statement to check if the array is nil.

 If it is nil, display a Text element telling the user to tap on the second button (to add strings to the array).

 If it is not nil, display the strings in a List.
 */

import SwiftUI

struct ContentView: View {
	
	@State private var array:[String]?
	
    var body: some View {
		
		VStack {
			HStack {
				Button("Nil") {
					array = nil
				}
				Button("Add") {
					array = ["Dorian", "Tigr", "Kaka"]
					print(array!)
				}
			}
			if (array == nil)
			{
				Text("Press add button")
			}
			else
			{
				List (array!, id: \.self) { element in
					Text(element)
				}
			}
		}
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

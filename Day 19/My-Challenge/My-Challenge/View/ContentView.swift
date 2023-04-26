//
//  ContentView.swift
//  My-Challenge
//
//  Created by Dorian Duraku on 25/04/2023.
//

/*
 Set up the data flow like you learned in the lesson. ObservableObject, ObservedObject and Published.

 Add a button to your UI called "Add Pineapple".

 When this button is tapped, change the "topping1" property of each pizza instance in the ViewModel to "Pineapple".

 Launch the simulator and tap on the button.

 What would you expect to happen?

 You'd expect your List to update and reflect the first topping of each pizza as "Pineapple", right?

 Why do you think this isn't happening?

 Give it some thought and see if you can come up with any theories on your own about why it "isn't working".

 When you put @Published beside the pizza array in your view model, it will broadcast changes made to the pizza array.

 Since we're only changing a property value of an object in the array, it doesn't register as a change to the array itself. That's why the view isn't receiving any triggers to need to update.

 To trigger a change to the array (and thus a broadcast to the view to update), you can do one of a few things:

 You can call the shuffle() method of the array to force a change
 You can remove the last element of the array and then re-append it to the array to force a change
 You can change the Pizza class to a structure instead (the reason why this works is because Structs are value types and value types are immutable (can't be modified). When you actually change a struct, behind the scenes in memory it gets destroyed and you're actually recreating it with your new value so it will trigger changes in the array. Whereas Classes are reference types and are mutable (can be changed). If you change a class instance, it doesn't destroy/recreate it in memory.)
 In the upcoming modules, we'll look at other data flow techniques so we won't have to rely on things like the above.
 */

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var viewModel = PizzasViewModel()
	
    var body: some View {

		NavigationStack {
			VStack {
				List (viewModel.pizzas, id: \.name) { pizza in
					VStack {
						Text(pizza.name)
							.font(.headline)
						HStack {
							Text(pizza.fstTopping)
							Text(pizza.sndTopping)
							Text(pizza.thdTopping)
						}
					}
				}
				.navigationTitle("Pizzas")
				Button("Add Pineapple") {
					viewModel.addPineapple()
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

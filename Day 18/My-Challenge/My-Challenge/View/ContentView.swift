//
//  ContentView.swift
//  My-Challenge
//
//  Created by Dorian Duraku on 25/04/2023.
//

/*
 Challenge

 Declare a Pizza class to model pizzas. Your class should have the following properties:

 name as a String
 topping1 as a String
 topping2 as a String
 topping3 as a String
 Declare a ViewModel and instantiate an array containing 3 instances of your class. Set the values for the properties of the 3 class instances.

 In the View (ContentView.swift), create an instance of your ViewModel and display the array of class objects in a SwiftUI List. Each row in your list should display the Pizza name and then underneath the name, display the three toppings horizontally side by side.

 Keep this project handy because we'll build upon it in the Lesson 8 challenge.
 */

import SwiftUI

struct ContentView: View {
	
	var viewModel = PizzasViewModel()
	
    var body: some View {

		NavigationStack {
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
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

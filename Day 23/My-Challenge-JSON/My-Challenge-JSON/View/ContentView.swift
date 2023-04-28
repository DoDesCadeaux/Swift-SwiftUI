//
//  ContentView.swift
//  My-Challenge-JSON
//
//  Created by Dorian Duraku on 27/04/2023.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var model = PizzaModel()
	
    var body: some View {
        VStack {
			List (model.pizzas) { p in
				VStack(alignment: .center) {
					Text(p.name)
						.font(.title)
					HStack(alignment: .center) {
						ForEach(p.toppings, id: \.self) { topping in
							Text(topping)
						}
					}
				}
				.padding(.bottom)
			}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
				HStack {
					Image(p.image)
						.resizable()
						.scaledToFill()
						.frame(width: 75, height: 75, alignment: .center)
						.clipped()
						.cornerRadius(5)
					VStack(alignment: .leading) {
						Text(p.name)
							.font(.title3)
							.multilineTextAlignment(.leading)
							.bold()
						HStack {
							ForEach (p.toppings, id: \.self) { topping in
								Text(topping)
									.fontWeight(.light)
									.frame(width: nil)
							}
						}
					}
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

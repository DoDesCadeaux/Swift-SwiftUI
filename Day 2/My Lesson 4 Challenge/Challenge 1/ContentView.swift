//
//  ContentView.swift
//  Challenge 1
//
//  Created by Dorian Duraku on 15/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		
		VStack
		{
			ZStack
			{
				Image("toronto")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.cornerRadius(10)
					.padding(.bottom, 20.0)
				VStack {
					Text("CN Tower")
						.font(.largeTitle)
					Text("Toronto")
				}
				.foregroundColor(Color.white)
				.padding(.horizontal, 25)
				.padding(.vertical, 15)
				.background(Color.black.opacity(0.8))
				.cornerRadius(10)
			}
			ZStack {
				Image("london")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.cornerRadius(10)
					.padding(10)
				VStack {
					Text("Big Ben")
						.font(.largeTitle)
					Text("London")
				}
				.foregroundColor(Color.white)
				.padding(.horizontal, 20)
				.padding(.vertical, 17)
				.background(Color.black.opacity(0.8))
				.cornerRadius(10)
			}
		}
		.padding(8.0)
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

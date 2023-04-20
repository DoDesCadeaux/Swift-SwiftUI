//
//  ContentView.swift
//  War Challenge
//
//  Created by Dorian Duraku on 15/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		
		ZStack {
			Image("background")
				.resizable()
				.ignoresSafeArea()
			VStack {
				//War Logo
				Spacer()
				Image("logo")
				Spacer()
				//2 Cards
				HStack
				{
					Image("card3")
						.padding(.horizontal, 25)
					Image("card4")
						.padding(.horizontal, 25)
				}
				Spacer()
				
				//Deal Button
				Image("dealbutton")
				Spacer()
				
				//Scores
				HStack {
					VStack {
						Text("Player")
							.font(.system(size: 20))
							.fontWeight(.semibold)
							.foregroundColor(Color.white)
							.padding(.vertical, 25)
						Text("0")
							.font(.system(size: 30))
							.fontWeight(.semibold)
							.foregroundColor(Color.white)
					}
					.padding(.trailing, 50.0)
					VStack {
						Text("CPU")
							.font(.system(size: 20))
							.fontWeight(.semibold)
							.foregroundColor(Color.white)
							.padding(.vertical, 25)
						Text("0")
							.font(.system(size: 30))
							.fontWeight(.semibold)
							.foregroundColor(Color.white)
					}
					.padding(.leading, 50.0)
				}
				Spacer()
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

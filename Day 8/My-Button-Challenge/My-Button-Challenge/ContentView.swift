//
//  ContentView.swift
//  My-Button-Challenge
//
//  Created by Dorian Duraku on 17/04/2023.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		
		VStack(spacing: 100) {
			Button("Tap Me!") {
				print("Text Button tapped!")
			}.foregroundColor(.orange)
			
			Button {
				print("Image Button taped!")
			} label: {
				HStack {
					Image(systemName: "play.fill")
						.foregroundColor(.green)
					Text("Play")
						.foregroundColor(.green)
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

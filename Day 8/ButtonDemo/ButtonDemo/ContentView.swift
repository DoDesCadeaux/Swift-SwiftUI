//
//  ContentView.swift
//  ButtonDemo
//
//  Created by Dorian Duraku on 16/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		
		
		VStack {
			//Button instance with closure
			Button("Click Here", action: {
				print("Hello")
			})
			
			//Button instance with label view
			Button {
				print("Hello World!")
			} label: {
				HStack {
					Image(systemName: "pencil")
					Text("Edit")
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

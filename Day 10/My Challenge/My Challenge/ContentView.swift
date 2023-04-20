//
//  ContentView.swift
//  My Challenge
//
//  Created by Dorian Duraku on 18/04/2023.
//

import SwiftUI

struct ContentView: View {
	@State private var number = 0
	@State private var isZero = 0
	@State private var isFifty = 0
	
    var body: some View {
		
		VStack {
			Spacer()
			Text(String(number))
				.font(.system(size: 40))
				.foregroundColor(.red)
			Spacer()
			Button {
				let randomNumber = Int.random(in: 1...10)
				
				if (number <= 50 && isFifty == 0)
				{
					number += randomNumber
					if (number >= 50)
					{
						isFifty = 1
						isZero = 0
					}
				}
				else if (number >= 0 && isFifty == 1)
				{
					number -= randomNumber
					if (number <= 0)
					{
						isZero = 1
						isFifty = 0
					}
				}
			} label: {
				Image(systemName: "button.programmable")
					.font(.system(size: 40))
					.foregroundColor(.green)
			}
			Spacer()
		}
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

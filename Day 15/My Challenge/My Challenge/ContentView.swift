//
//  ContentView.swift
//  My Challenge
//
//  Created by Dorian Duraku on 25/04/2023.
//


/*
 Challenge

 Build a UI with a List and three Buttons below it.

 When the first button is tapped:

 Add a random integer (from 1 to 10) to the List.
 If the integer you added to the List wasn't a 7, then keep adding random integers (from 1 to 10) to the List until you add a 7 to the List.
 
 When the second button is tapped:
 Increase all the integers shown in the List by 1
 
 When the third button is tapped:
 Clear all the numbers from the List.
 */


import SwiftUI

struct ContentView: View {
	
	@State private var randomList:[Int] = []
	
    var body: some View {
		VStack {
			List (randomList, id: \.self) { number in
				Text("\(number)")
			}
			HStack {
				Button("Random It") {
					var randomNumber = Int.random(in: 1...10)
					randomList.append(randomNumber)
					
					while randomNumber != 7 {
						randomNumber = Int.random(in: 1...10)
						randomList.append(randomNumber)
					}
				}
				Button("Add 1") {
					for index in randomList.indices {
						randomList[index] += 1
					}
				}
				Button("Clear All") {
					randomList.removeAll()
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

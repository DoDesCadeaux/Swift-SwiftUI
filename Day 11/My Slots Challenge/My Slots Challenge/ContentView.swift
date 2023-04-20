//
//  ContentView.swift
//  My Slots Challenge
//
//  Created by Dorian Duraku on 18/04/2023.
//

import SwiftUI

func jackpot(_ slot1: String, _ slot2: String, _ slot3: String) -> Bool {
	var jackpot = false
	if (slot1 == slot2 && slot1 == slot3)
	{
		jackpot = true
	}
	else
	{
		jackpot = false
	}
	return jackpot
}

func twoSame(_ slot1: String, _ slot2: String, _ slot3: String) -> Bool {
	var twoSame = false
	if (slot1 == slot2 || slot2 == slot3 || slot1 == slot3)
	{
		twoSame = true
	}
	else
	{
		twoSame = false
	}
	return twoSame
}

func randomInt() -> Int {
	let randomNumber = Int.random(in: 1...3)
	
	return randomNumber
}

func randomSlot(randomNumber: Int) -> String {
	let slot: String
	
	switch  randomNumber{
	case 1:
		slot = "apple"
		break
	case 2:
		slot = "star"
		break
	default:
		slot = "cherry"
	}
	return slot
}

struct ContentView: View {
	
	@State private var credits = 100
	@State private var isStart = false
	@State private var slotImage1 = randomSlot(randomNumber: randomInt())
	@State private var slotImage2 = randomSlot(randomNumber: randomInt())
	@State private var slotImage3 = randomSlot(randomNumber: randomInt())
	
    var body: some View {

		
		ZStack {
			Color.orange
				.ignoresSafeArea()
			VStack {
				Spacer()
				//Title
				Text("SwiftUI Slots!")
					.font(.largeTitle)
					.foregroundColor(.red)
					
				Spacer()
				
				//Credits
				HStack {
					Text("Credits: ")
						.font(.title)
					Text(String(credits))
						.font(.title)
				}
				Spacer()
				
				//Slots
				HStack {
					Image(slotImage1)
						.resizable()
						.scaledToFit()
					Image(slotImage2)
						.resizable()
						.scaledToFit()
					Image(slotImage3)
						.resizable()
						.scaledToFit()
				}
				
				if (jackpot(slotImage1, slotImage2, slotImage3) && isStart == true)
				{
					Text("Jackpot + 50 credits !")
						.font(.system(size: 30))
						.foregroundColor(.yellow)
				}
				else if (twoSame(slotImage1, slotImage2, slotImage3) && isStart == true)
				{
					Text("Two Same + 5 credits !")
						.font(.system(size: 30))
						.foregroundColor(.blue)
				}
				else if (isStart == true)
				{
					Text("- 10 credits")
						.font(.system(size: 30))
						.foregroundColor(.red)
				}
				
				Spacer()
				
				Button {
					isStart = true
					if (credits >= 5)
					{
						credits -= 10
						slotImage1 = randomSlot(randomNumber: randomInt())
						slotImage2 = randomSlot(randomNumber: randomInt())
						slotImage3 = randomSlot(randomNumber: randomInt())
						
						if (jackpot(slotImage1, slotImage2, slotImage3))
						{
							credits += 50
						}
						else if (slotImage1 == slotImage2 || slotImage2 == slotImage3 || slotImage1 == slotImage3)
						{
							credits += 5
						}
						else
						{
							credits += 0
						}
					}
					else
					{
						credits = 0
					}
				} label: {
					Text("Spin")
						.foregroundColor(.white)
						.padding(.horizontal, 40)
						.padding(.vertical, 10)
				}
				.background(Color.red)
				.cornerRadius(25)
				
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

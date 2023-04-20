//
//  ContentView.swift
//  My Challenge
//
//  Created by Dorian Duraku on 19/04/2023.
//

import SwiftUI

struct playingCard {
	let cardNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
	let colour = ["Spades", "Clubs", "Hearts", "Diamonds"]
	
	func leftButton(playedCard: inout [String]) -> String {
		let pickedCard: playingCard
		var randomNumber: Int
		var figures: String
		var randomColour: String
		var stringPlayed:String
		
		pickedCard = playingCard()
		randomNumber = pickedCard.cardNumber.randomElement() ?? 1
		figures = String(randomNumber)
		
		switch randomNumber {
		case 1:
			figures = "Ace"
			break
		case 11:
			figures = "Jack"
			break
		case 12:
			figures = "Queen"
			break
		case 13:
			figures = "King"
		default:
			figures = String(randomNumber)
		}
		
		randomColour = pickedCard.colour.randomElement() ?? "Hearts"
		stringPlayed = String(figures) + " " + String(randomColour)

		if (playedCard.contains(stringPlayed))
		{
			return "Generated duplicated card"
		}
		else
		{
			playedCard.append(stringPlayed)
			print(playedCard)
			return ("Generated a " + playedCard.last!)
		}
	}
}

func rightButton(deckCard: [String]) -> String {
	let pickedCard:String
	
	if (deckCard.isEmpty)
	{
		return "No cards in the deck"
	}
	pickedCard = deckCard.randomElement()!
	return ("Drew a " + pickedCard)
}

struct ContentView: View {
	
	@State private var labelCard = "Game Cards !"
	@State private var deck:playingCard = playingCard()
	@State private var picked: [String] = []
	@State private var played: [String] = []
	
    var body: some View {
		
		
		ZStack {
			Color.orange
				.ignoresSafeArea()
			VStack {
				Spacer()
				Text(labelCard)
					.font(.system(size: 30))
					.foregroundColor(.yellow)
				Spacer()
				HStack {
					Spacer()
					Button {
						labelCard = deck.leftButton(playedCard: &played)
					} label: {
						Image(systemName: "button.programmable")
							.foregroundColor(.red)
							.font(.system(size: 50))
					}
					Spacer()
					Button {
						labelCard = rightButton(deckCard: played)
					} label: {
						Image(systemName: "button.programmable")
							.foregroundColor(.purple)
							.font(.system(size: 50))
					}
					Spacer()
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

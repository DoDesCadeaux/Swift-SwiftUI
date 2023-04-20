//
//  ContentView.swift
//  war-challenge
//
//  Created by Christopher Ching on 2020-10-28.
//

import SwiftUI

struct ContentView: View {
	
	@State private var playerCard = "back"
	@State private var cpuCard = "back"
	@State private var playerScore = 0
	@State private var cpuScore = 0
	
    var body: some View {
        ZStack {
            
            Image("background")
				.resizable()
				.ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
				
				Button(action: {
					let playerRand = Int.random(in: 2...14)
					let cpuRand = Int.random(in: 2...14)
					//Generate random between 2 and 14 (all of our cards)
					playerCard = "back"
					cpuCard = "back"

					//Update cards
					playerCard = "card" + String(playerRand)
					cpuCard = "card" + String(cpuRand)
					
					//Update score
					if (playerRand > cpuRand)
					{
						playerScore += 1
					}
					else if (playerRand == cpuRand)
					{
						playerScore += 0
						cpuScore += 0
					}
					else
					{
						cpuScore += 1
					}
					
				}) {
					Image("dealbutton")
				}
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
				Button {
					playerCard = "back"
					cpuCard = "back"
					playerScore = 0
					cpuScore = 0
				} label: {
					Image(systemName: "arrow.2.circlepath.circle.fill")
						.font(.system(size: 70))
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

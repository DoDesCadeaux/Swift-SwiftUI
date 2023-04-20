//
//  ContentView.swift
//  M1L11 Challenge Solution
//
//  Created by Christopher Ching on 2021-04-08.
//  Credit to Chris Parker for this challenge solution.

import SwiftUI

struct ContentView: View {
    
    @State var value = 0
    
    var body: some View {
        VStack(spacing: 30) {
                    Text("\(value)")

                    Button {
                        value += 2
                    } label: {
                        Text("Add 2")
                    }

                    Button {
                        value *= 2
                    } label: {
                        Text("Multiply by 2")
                    }
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

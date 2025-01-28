//
//  GuessView.swift
//  dohyo
//
//  Created by marc on 27/1/2025.
//

import SwiftUI

let guessLayout = Array(repeating: GridItem(), count: 8)
let guess = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "E", "F"]
// dupes will nnot be shown as the ID is the same
struct GuessView: View {
    var body: some View {
        HStack {
            LazyVGrid(columns: guessLayout) {
                ForEach(guess, id:\.self) { item in
                    VStack {
                        Text(item)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.primary)
                            .padding(5)
                            .background(.thinMaterial)
                    }
                }
            }
            
        }.background(Color.gray)
    }
}

#Preview {
    GuessView()
}

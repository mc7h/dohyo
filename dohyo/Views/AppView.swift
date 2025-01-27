//
//  ContentView.swift
//  dohyo
//
//  Created by marc on 27/1/2025.
//

import SwiftUI

struct AppView: View {
    @State private var showSettings = false
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    //Text(viewModel.guess)
                    Spacer()
                }
                Spacer()
                VStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Button("Tap me") {
                        //viewModel.updateGuess("Yay")
                    }
                }
                .padding()
                .border(.flair, width:  2)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "character.bubble.fill.ja")
                        Text("dohyō")
                            .font(.title)
                            .fontWeight(.heavy)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button {
                            showSettings.toggle()
                        } label: {
                           Image(systemName: "gearshape.fill")
                        }
                    }
                }
            }
            .sheet(isPresented: $showSettings) {
                SettingsView()
            }
            
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    AppView()
}

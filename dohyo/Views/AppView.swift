//
//  ContentView.swift
//  dohyo
//
//  Created by marc on 27/1/2025.
//

import SwiftUI

struct AppView: View {
    @Environment(AppSettings.self) var appSettings
    @State private var showSettings = false
    @AppStorage("userFoo") var userFoo:Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("Hakuho")
                    .resizable()
                    .scaledToFit()
                Text("count")
                Text("\(appSettings.counter)")
                    .font(.largeTitle)
                Text("Showing hints").opacity(appSettings.showHints ? 0.5 : 0)
                Spacer()
                VStack {
                    Button("Tap me") {
                        appSettings.counter += 1
                    }
                    Toggle(isOn: $userFoo) {
                        Text("Save")
                    }
                }
                .padding()
                .background(.regularMaterial)
                
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
                        Image(systemName: "bolt.fill")
                            .foregroundStyle(.flair)
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
        .environment(AppSettings())
}

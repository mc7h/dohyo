//
//  SettingsView.swift
//  dohyo
//
//  Created by marc on 27/1/2025.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            VStack {
                Toggle("Show hints", isOn: .constant(false))
                Spacer()
            }.padding()
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "checkmark")
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

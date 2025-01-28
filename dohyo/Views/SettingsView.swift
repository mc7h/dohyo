//
//  SettingsView.swift
//  dohyo
//
//  Created by marc on 27/1/2025.
//

import SwiftUI

struct SettingsView: View {
    @Environment(AppSettings.self) var appSettings
    @Environment(\.dismiss) var dismiss
    var body: some View {
        @Bindable var bindableAppSettings = appSettings
        NavigationView {
            VStack(alignment: .leading) {
                Toggle("Show hints", isOn: $bindableAppSettings.showHints)
                Spacer()
                AboutView()
            }
            .padding()
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.uturn.backward.circle.fill")
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
        .environment(AppSettings())
}

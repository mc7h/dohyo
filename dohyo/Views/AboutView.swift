//
//  AboutView.swift
//  dohyo
//
//  Created by marc on 28/1/2025.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        HStack {
            Group {
                Text(Bundle.main.appName)
                Text("v\(Bundle.main.appVersion)∙\(Bundle.main.buildVersion)")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    AboutView()
}

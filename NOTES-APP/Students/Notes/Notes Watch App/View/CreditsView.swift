//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Kwesi A Botchey on 01/04/2024.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 3) {
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            HeaderView(title: "Credits")
            
            // CONTENT
            Text("Kwesbot")
                .foregroundStyle(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .fontWeight(.light)
            
        } //: VSTACK
    }
}

// MARK: - PROPERTIES
#Preview {
    CreditsView()
}

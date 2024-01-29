//
//  CreditsView.swift
//  Africa
//
//  Created by Kwesi A Botchey on 26/01/2024.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
        Copyright © Kwesi A. Botchey
        All rights reserved
        Better Apps ♡ Less Code
        """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CreditsView()
        .padding()
}

//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Stephen Kwesi Botchey on 01/02/2024.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTIES
    let player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    return FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}

//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Stephen Kwesi Botchey on 01/02/2024.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - PREVIEW
#Preview {
    FeaturedTabView()
        .background(Color.gray)
}

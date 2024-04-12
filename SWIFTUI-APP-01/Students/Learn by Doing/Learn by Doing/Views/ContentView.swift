//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Stephen Kwesi Botchey on 04/04/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var cards: [Card] = cardData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                     CardView(card: item)
                } //: LOOP
            } //: HSTACK
            .padding(25)
        } //: SCROLL
        
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView(cards: cardData)
}

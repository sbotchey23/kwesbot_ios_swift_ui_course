//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Stephen Kwesi Botchey on 04/04/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(0 ..< 6) { item in
                    CardView()
                } //: LOOP
            } //: HSTACK
            .padding(25)
        } //: SCROLL
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
